# coding: utf-8
# import pprint

from huaweicloudsdkcore.auth.credentials import BasicCredentials
from huaweicloudsdkcore.exceptions import exceptions
from huaweicloudsdkcore.http.http_config import HttpConfig
# import specified service library huaweicloudsdk{service}, take vpc for example
# from huaweicloudsdkvpc.v2 import *
# from huaweicloudsdkecs.v2 import *
from huaweicloudsdkdgc.v1 import *
from tabulate import tabulate


# def list_vpc(client):
#     try:
#         request = ListVpcsRequest(limit=1)
#         response = client.list_vpcs(request)
#         print(response)
#     except exceptions.ClientRequestException as e:
#         print(e.status_code)
#         print(e.request_id)
#         print(e.error_code)
#         print(e.error_msg)


def list_dgc(client: DgcClient):
    try:
        list_request = ListJobsRequest()
        list_response = client.list_jobs(list_request)

        print(list_response)
        stop_request = StopJobRequest('job_2436') # list_response.jobs[2].name
        stop_response = client.stop_job_instance(stop_request)
        print(stop_response)
    except exceptions.ClientRequestException as e:
        print(e.status_code)
        print(e.request_id)
        print(e.error_code)
        print(e.error_msg)


# def list_ecs(client: EcsClient):
#     try:
#         request = ListFlavorsRequest()
#         response = client.list_servers_details(request)
#         # pprint.pprint(response.servers)
#         header = ['ID', 'Name', 'Status', 'Type', 'vCPU', 'RAM', 'Private IP', 'EIP']
#         items = [header]
#         for s in response.servers:
#             try:
#                 items.append([s.id, s.name, s.status, f'{s.flavor.name}', f'{s.flavor.vcpus} vCPU', f'{s.flavor.ram} RAM',
#                               s.addresses.get(s.metadata.get('vpc_id'))[0].addr,
#                               s.addresses.get(s.metadata.get('vpc_id'))[1].addr])
#             except Exception as ex:
#                 items.append([s.id, s.name, s.status, f'{s.flavor.name}', f'{s.flavor.vcpus} vCPU', f'{s.flavor.ram} RAM',
#                               s.addresses.get(s.metadata.get('vpc_id'))[0].addr, '-------'])
#             # items = [[s.id, s.name, s.status, s.metadata.get('image_name'), s.addresses.get(s.metadata.get('vpc_id'))[0].addr, s.addresses.get(s.metadata.get('vpc_id'))[1].addr]for s in response.servers]
#         t = tabulate(items)
#         print(t)
#     except exceptions.ClientRequestException as e:
#         print(e.status_code)
#         print(e.request_id)
#         print(e.error_code)
#         print(e.error_msg)


if __name__ == "__main__":
    ak = "X9HRTSQYF18C6A4ZN9RD"
    sk = "9PDLMMHPXznxLQQTDbcpjoWNLpFYSthLcdVaxDO0"
    endpoint = "https://dayu-dlf.ap-southeast-3.myhuaweicloud.com"
    project_id = "2b0f7da130884907b9ba9e41b8bbbc6c"

    config = HttpConfig.get_default_config()
    config.ignore_ssl_verification = True
    credentials = BasicCredentials(ak, sk, project_id)

    # ecs_client = EcsClient.new_builder() \
    #     .with_http_config(config) \
    #     .with_credentials(credentials) \
    #     .with_endpoint(endpoint) \
    #     .build()

    dgc_client = DgcClient.new_builder() \
        .with_http_config(config) \
        .with_credentials(credentials) \
        .with_endpoint(endpoint) \
        .build()

    # request = ListFlavorsRequest()
    # response = ecs_client.list_servers_details(request)
    # print(response)
    # list_ecs(ecs_client)
    list_dgc(dgc_client)