import type { UserConfig } from '~/types'

export const userConfig: Partial<ThemeConfig> = {
  site: {
    title: '表里之间',
    subtitle: 'In Between',
    author: 'o-o',
    description: 'A brief moment in between',
    website: 'https://xue-think.github.io',
    socialLinks:[
      {
        name: 'rss',
        href: '/atom.xml',
      },
      {
        name: 'mastodon',
        href: 'https://m.cmx.im/@xue',
      }
    ],
    categoryMap: [
      { name: '表里之间', path: 'in-between' },
    ],
  },
  appearance: {
    theme: 'light',
  },
}
