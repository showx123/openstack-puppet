Facter.add(:iface1_com) do
        setcode do
                iface = Facter::Core::Execution.exec('cat /root/openstack-puppet/answer.txt |grep iface1_com')
                result = iface[iface.index('=')+2, iface.length]
        end
end

Facter.add(:iface2_com) do
        setcode do
                iface = Facter::Core::Execution.exec('cat /root/openstack-puppet/answer.txt |grep iface2_com')
                result = iface[iface.index('=')+2, iface.length]
        end
end

Facter.add(:ip_public_com) do
        setcode do
                ipaddr = Facter::Core::Execution.exec('cat /root/openstack-puppet/answer.txt |grep ip_public_com')
                result = ipaddr[ipaddr.index('=')+2, ipaddr.length]
        end
end

Facter.add(:ip_private_com) do
        setcode do
                ipaddr = Facter::Core::Execution.exec('cat /root/openstack-puppet/answer.txt |grep ip_private_com')
                result = ipaddr[ipaddr.index('=')+2, ipaddr.length]
        end
end

Facter.add(:gateway_com) do
        setcode do
                gate = Facter::Core::Execution.exec('cat /root/openstack-puppet/answer.txt |grep gateway_com')
                result = gate[gate.index('=')+2, gate.length]
        end
end

Facter.add(:num_compute) do
        setcode do
                number = Facter::Core::Execution.exec('cat /root/openstack-puppet/answer.txt |grep "number_compute ="')
                result = number[number.index('=')+2, number.length]
        end
end
