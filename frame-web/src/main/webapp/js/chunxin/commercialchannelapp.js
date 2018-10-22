$(function () {
    $("#jqGrid").jqGrid({
        url: '../commercialchannelapp/list',
        datatype: "json",
        colModel: [			
			{ label: 'id', name: 'id', index: 'id', width: 50, key: true },
			{ label: '期间', name: 'timeRange', index: 'time_range', width: 80 }, 			
			{ label: '身份证号', name: 'cardId', index: 'card_id', width: 80 }, 			
			{ label: '姓名', name: 'name', index: 'name', width: 80 }, 			
			{ label: '服务公司', name: 'company', index: 'company', width: 80 }, 			
			{ label: '线上渠道推广完成率', name: 'onlineRate', index: 'online_rate', width: 80 }, 			
			{ label: '线下渠道推广成功完成率', name: 'offlineRate', index: 'offline_rate', width: 80 }, 			
			{ label: '有效转化数量', name: 'effectiveQuantity', index: 'effective_quantity', width: 80 }, 			
			{ label: '有效用户数', name: 'effectiveUser', index: 'effective_user', width: 80 }, 			
			{ label: '奖励系数', name: 'rewardCoefficient', index: 'reward_coefficient', width: 80 }, 			
			{ label: '项目最终所得', name: 'finalIncome', index: 'final_income', width: 80 }
        ],
		viewrecords: true,
        height: 385,
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



});



var vm = new Vue({
	el:'#rrapp',
	data:{
		showList: true,
		title: null,
		commercialChannelApp: {},
        q:{
            key: null,
            timeRange:null
        },
	},
	methods: {
		query: function () {
			vm.reload();
		},
		add: function(){
			vm.showList = false;
			vm.title = "新增";
			vm.commercialChannelApp = {};
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
			var url = vm.commercialChannelApp.id == null ? "../commercialchannelapp/save" : "../commercialchannelapp/update";
			$.ajax({
				type: "POST",
			    url: url,
			    data: JSON.stringify(vm.commercialChannelApp),
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
				    url: "../commercialchannelapp/delete",
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
			$.get("../commercialchannelapp/info/"+id, function(r){
                vm.commercialChannelApp = r.commercialChannelApp;
            });
		},
		reload: function (event) {
			vm.showList = true;
			var page = $("#jqGrid").jqGrid('getGridParam','page');
			$("#jqGrid").jqGrid('setGridParam',{
                postData:{'key': vm.q.key,"timeRange":vm.q.timeRange},
                page:page
            }).trigger("reloadGrid");
		}
	}
});
