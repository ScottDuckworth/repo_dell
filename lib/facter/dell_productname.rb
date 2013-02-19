# This is a simple fact to convert Facter's :productname into one supported
# by Dell OMSA repo
#
# Example:
#  productname => PowerEdge R510
# will be converted to
#  dell_productname => r510
#
# Note that productname is only available to system users (root)
#
# https://puppetlabs.com/blog/facter-part-1-facter-101/
# https://puppetlabs.com/blog/facter-part-2-testing-and-deployment/
# $ mkdir -p ~/lib/facter
# $ cp modules/repo_centos/lib/facter/*.rb ~/lib/facter/
# $ export FACTERLIB=~/lib/facter:$FACTERLIB
# $ facter | grep dell_product_name

Facter.add(:dell_productname) do
  v = Facter.value(:productname)
  setcode do
    v.split(" ")[1].strip.downcase
  end
end
