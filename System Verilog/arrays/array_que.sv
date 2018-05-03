// Code for Testing Queues

module array_que;

int j=1, b[$]={3,4}, q[$]={0,2,5};
int dyn[];

initial
begin
  dyn=new[5];
  foreach(dyn[i]) dyn[i]=i;
	q.insert(1,j);
	q.insert(3,b[0]);
	q.insert(4,b[1]);
	$display(q);
	q.delete(1);
	$display(q);
	q.push_front(6);
	$display(q);
	j=q.pop_back();
	$display(q);
	q.push_back(8);
	$display(q);
	j=q.pop_front();
	$display(q);
	q.insert(5,dyn[3]);
	$display(q);
	//q.insert(5,dyn);
	//$display(q);
	$display(dyn);
end

endmodule
