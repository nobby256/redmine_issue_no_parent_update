class IssueNoParentUpdateListener < Redmine::Hook::ViewListener
  def view_issues_form_details_bottom(context={ })
    html = <<-"SCRIPT"
<script type='text/javascript'>
//<![CDATA[
$(function() {
  var elm;
  var attr;
  
  //issue_priority_id
  elm = $('#issue_priority_id');
  attr = elm.attr('disabled');
  if(typeof attr !== typeof undefined && attr !== false) {
  alert('issue_priority_id');
    elm.removeAttr('disabled');
  }
  
  //issue_start_date
  elm = $('#issue_start_date');
  attr = elm.attr('disabled');
  if(typeof attr !== typeof undefined && attr !== false) {
  alert('issue_start_date');
    elm.removeAttr('disabled');
    elm.datepicker(datepickerOptions);
  }
  
  //issue_due_date
  elm = $('#issue_due_date');
  attr = elm.attr('disabled');
  if(typeof attr !== typeof undefined && attr !== false) {
  alert('issue_due_date');
    elm.removeAttr('disabled');
    elm.datepicker(datepickerOptions);
  }
});
//]]>
</script>
    SCRIPT
    html
  end
end