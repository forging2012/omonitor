<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-10">
            <div class="ibox float-e-margins">
                <div id="ibox-content" class="ibox-title">
                    <h5> 填写告警基本信息 </h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                        </ul>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    {{if .emg}}
                        <div class="alert alert-warning text-center">{{.emg}}</div>
                    {{end}}
                    {{if .smg}}
                        <div class="alert alert-success text-center">{{.smg}}</div>
                    {{end}}
                    <form id="alarmForm" method="post" class="form-horizontal">
                        <div class="hr-line-dashed"></div>
                        <div class="form-group"><label class="col-sm-2 control-label"> Topic名称 <span class="red-fonts">*</span> </label>
                            <div class="col-sm-8"><input type="text" name="topicname" class="form-control" value="{{ .topic.Topicname }}" readonly></div>
                        </div>
						<div class="hr-line-dashed"></div>
                        <div class="form-group"><label class="col-sm-2 control-label"> 是否监控 </label>
                            <div class="col-sm-8">
							{{if eq .topic.Monitoring 0}}
							    <label class="radio-inline">
								    <input type="radio" name="monitoring" id="monitor1" value="0" checked> 不监控
								</label>
								<label class="radio-inline">
								    <input type="radio" name="monitoring" id="monitor2" value="1"> 监控
								</label>
							{{else}}
							    <label class="radio-inline">
								    <input type="radio" name="monitoring" id="monitor1" value="0"> 不监控
								</label>
								<label class="radio-inline">
								    <input type="radio" name="monitoring" id="monitor2" value="1" checked> 监控
								</label>
							{{end}}
							</div>
                        </div>
						<div class="hr-line-dashed"></div>
                        <div class="form-group"><label class="col-sm-2 control-label"> 监控阀值 </label>
                            <div class="col-sm-8"><input type="text" name="alarmval" class="form-control" value="{{ .topic.Alarmval }}"></div>
                        </div>
						<div class="hr-line-dashed"></div>
                        <div class="form-group"><label class="col-sm-2 control-label"> 已告警次数 </label>
                            <div class="col-sm-8"><input type="text" name="already" class="form-control" value="{{ .topic.Already }}"></div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group"><label class="col-sm-2 control-label"> 备注 </label>
                            <div class="col-sm-8"><input type="text" name="comment" class="form-control" value="{{ .topic.Comment }}"></div>
                        </div>
                        
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-5">
                                <button class="btn btn-white" type="reset"> 重置 </button>
                                <button class="btn btn-primary" type="submit"> 提交 </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(function(){
        $("#alarmset").addClass('active');
        $(".alarmkafka").addClass('active');

    });
</script>