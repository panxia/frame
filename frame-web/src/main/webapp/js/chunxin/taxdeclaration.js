$(function () {
    $("#jqGrid").jqGrid({
        url: '../taxdeclaration/list',
        datatype: "json",
        colModel: [			
			{ label: 'id', name: 'id', index: 'id', width: 50, key: true },
			{ label: '收款人', name: 'payee', index: 'payee', width: 80 }, 			
			{ label: '银行账号', name: 'bankAccount', index: 'bank_account', width: 80 }, 			
			{ label: '开户行', name: 'openBank', index: 'open_bank', width: 80 }, 			
			{ label: '开户地', name: 'openPlace', index: 'open_place', width: 80 }, 			
			{ label: '劳务人员', name: 'labourPerson', index: 'labour_person', width: 80 }, 			
			{ label: '劳务人员身份证号', name: 'labourCardid', index: 'labour_cardid', width: 80 }, 			
			{ label: '劳务人员手机号码', name: 'labourPhone', index: 'labour_phone', width: 80 }, 			
			{ label: '服务项目', name: 'serviceItem', index: 'service_item', width: 80 }, 			
			{ label: '服务时间', name: 'serviceTime', index: 'service_time', width: 80 }, 			
			{ label: '税前', name: 'preTax', index: 'pre_tax', width: 80 }, 			
			{ label: '税后', name: 'afterTax', index: 'after_tax', width: 80 }, 			
			{ label: '实际付款', name: 'actualPayment', index: 'actual_payment', width: 80 }			
        ],
		viewrecords: true,
        height: 500,
        rowNum: 10,
		rowList : [10,30,50],
        rownumbers: true, 
        rownumWidth: 25, 
        autowidth:true,
        multiselect: true,
        pager: "#jqGridPager",
        jsonReader : {
            root: "page.list",
            page: "page.currPage",
            total: "page.totalPage",
            records: "page.totalCount"
        },
        prmNames : {
            page:"page", 
            rows:"limit", 
            order: "order"
        },
        gridComplete:function(){
        	//隐藏grid底部滚动条
        	$("#jqGrid").closest(".ui-jqgrid-bdiv").css({ "overflow-x" : "hidden" }); 
        }
    });

    new AjaxUpload('#upload', {
        action: '../taxdeclaration/import',
        name: 'file',
        autoSubmit:true,
        responseType:"json",
        onSubmit:function(file, extension){
            if (!(extension && /^(xls|xlsx)$/.test(extension.toLowerCase()))){
                alert('只支持xls、xlsx格式的文件！');
                return false;
            }
        },
        onComplete : function(file, r){
            if(r.code == 0){
                alert('操作成功', function(index){
                    vm.reload();
                });
            }else{
                alert(r.msg);
            }
        }
    });
});

var vm = new Vue({
	el:'#rrapp',
	data:{
		showList: true,
		title: null,
		taxDeclaration: {}
	},
	methods: {
		query: function () {
			vm.reload();
		},
		add: function(){
			vm.showList = false;
			vm.title = "新增";
			vm.taxDeclaration = {};
		},
		update: function (event) {
			var id = getSelectedRow();
			if(id == null){
				return ;
			}
			vm.showList = false;
            vm.title = "修改";
            
            vm.getInfo(id)
		},
		saveOrUpdate: function (event) {
			var url = vm.taxDeclaration.id == null ? "../taxdeclaration/save" : "../taxdeclaration/update";
			$.ajax({
				type: "POST",
			    url: url,
			    data: JSON.stringify(vm.taxDeclaration),
			    success: function(r){
			    	if(r.code === 0){
						alert('操作成功', function(index){
							vm.reload();
						});
					}else{
						alert(r.msg);
					}
				}
			});
		},
		del: function (event) {
			var ids = getSelectedRows();
			if(ids == null){
				return ;
			}
			
			confirm('确定要删除选中的记录？', function(){
				$.ajax({
					type: "POST",
				    url: "../taxdeclaration/delete",
				    data: JSON.stringify(ids),
				    success: function(r){
						if(r.code == 0){
							alert('操作成功', function(index){
								$("#jqGrid").trigger("reloadGrid");
							});
						}else{
							alert(r.msg);
						}
					}
				});
			});
		},
		getInfo: function(id){
			$.get("../taxdeclaration/info/"+id, function(r){
                vm.taxDeclaration = r.taxDeclaration;
            });
		},
		reload: function (event) {
			vm.showList = true;
			var page = $("#jqGrid").jqGrid('getGridParam','page');
			$("#jqGrid").jqGrid('setGridParam',{ 
                page:page
            }).trigger("reloadGrid");
		}
	}
});