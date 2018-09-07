function [acc_sum] = evl_cluster_result(C, label, k)
cluster = [];
acc_sum = 0;
for i = 0:k-1
    true_cluster_num = find(label == i);
    result = C(true_cluster_num);
    for j = 0:k-1
        cluster = [cluster, length(find(result == j))];
    end
    acc_sum = acc_sum + max(cluster);
end
