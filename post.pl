use  HTTP::Request::Common qw(POST);
use LWP::UserAgent;
$ua = LWP::UserAgent->new;

my $req = POST 'http://www.excite.co.jp/world/english/',
              [ before => 'xxx 
hello this is a text file
contains english �ȡ��ˤۤ󤴡����ܸ�
���꤬�Ȥ������ߤ����줤��
               xxx', wb_lp => 'JAEN',submit=>'Translate'];
print $ua->request($req)->as_string;
