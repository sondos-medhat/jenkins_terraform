resource "aws_route" "public" {
  route_table_id            = aws_route_table.public.id
  destination_cidr_block    =  var.routecidr
  gateway_id = aws_internet_gateway.publicgateway.id
}