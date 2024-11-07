/**
 * @description 解析最新版本，下载文件
 * @author lushdog
 */

const RELEASES_URL =
  'https://api.github.com/repos/subspace/subspace/releases/latest'

const IS_ARM = process.env.IS_ARM === 'true'
const IS_SKYLAKE = process.env.IS_SKYLAKE
  ? process.env.IS_SKYLAKE === 'true'
  : true

const downloadType = process.argv[3]

const reg = IS_ARM
  ? /ubuntu-aarch64/
  : IS_SKYLAKE
  ? /ubuntu-x86_64-skylake/
  : /ubuntu-x86_64-v2/
  
const download = async () => {
  const relases = await fetch(RELEASES_URL).then((res) => res.json())
  const allRelases = relases.assets
    .filter((item) => item.name.includes(downloadType))
    .filter((item) => !item.name.includes('rocm'))
    .map((item) => ({
      name: item.name,
      browser_download_url: item.browser_download_url,
    }))
  const target = allRelases.find((rels) => reg.test(rels.name))
  console.log(target)
  await $`wget ${target.browser_download_url}`
  await $`mv ${target.name} ${downloadType}`
}

await download()
