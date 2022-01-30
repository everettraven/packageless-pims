// @ts-check
// Note: type annotations allow type checking and IDEs autocompletion

const lightCodeTheme = require('prism-react-renderer/themes/github');
const darkCodeTheme = require('prism-react-renderer/themes/dracula');

/** @type {import('@docusaurus/types').Config} */
const config = {
  title: 'Packageless Pims',
  tagline: 'Documentation',
  url: 'https://everettraven.github.io',
  baseUrl: '/packageless-pims/',
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  favicon: 'img/light_mode.png',
  organizationName: 'everettraven', // Usually your GitHub org/user name.
  projectName: 'packageless-pims', // Usually your repo name.

  presets: [
    [
      '@docusaurus/preset-classic',
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: {
          routeBasePath: '/',
          sidebarPath: require.resolve('./sidebars.js'),
          // Please change this to your repo.
          editUrl: 'https://github.com/everettraven/packageless-pims/edit/main/docs/',
        },
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
      }),
    ],
  ],

  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    ({
      navbar: {
        title: 'packageless-pims',
        logo: {
          alt: 'My Site Logo',
          src: 'img/light_mode.png',
          srcDark: 'img/dark_mode.png'
        },
        items: [
          {
            href: 'https://github.com/everettraven/packageless-pims',
            label: 'GitHub',
            position: 'right',
          },
        ],
      },
      footer: {
        style: 'dark',
        links: [
          {
            title: 'Docs',
            items: [
              {
                label: 'Greetings',
                to: '/',
              },
              {
                label: 'Contributing',
                to: 'contributing'
              },
              {
                label: 'Creating a pim repository',
                to: 'create-pim-repo'
              },
              {
                label: 'Creating a pim configuration file',
                to: 'create-pim-config'
              }
            ],
          },
        ],
        copyright: `Copyright © ${new Date().getFullYear()} packageless-pims. Built with Docusaurus.`,
      },
      prism: {
        theme: lightCodeTheme,
        darkTheme: darkCodeTheme,
      },
    }),
};

module.exports = config;
