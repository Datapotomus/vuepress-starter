
# Vuepress Starter template

Was taken from the project [here](https://fruitriin.github.io/VuePressOnGithubPageTemplate/).

Then modified just a little bit to be a starter template for myself, but anyone else can use it.

## Setup Steps

1. If you haven't seen the getting started steps on the vuepress site please read through it 
   
   [https://v1.vuepress.vuejs.org/guide/getting-started.html](https://v1.vuepress.vuejs.org/guide/getting-started.html).
2. Create a new repo [New Repo](https://github.com/new) or open your exsisting repo locally.
3. Clone this repository into your new repository or copy the content from this repo into your exsisting repo.
4. Make sure to install it as a local dependency. 
   [https://v1.vuepress.vuejs.org/guide/getting-started.html#inside-an-existing-project](https://v1.vuepress.vuejs.org/guide/getting-started.html#inside-an-existing-project)
5. Change the .env file to point to your username and github repo.
6. If you want to deploy your projects to github pages you should be able to execute the deploy.sh as-is.
7. If you want to deploy out to another service such as netlify. You will just need to modify the config.js to use the root base, and not your project's base.
   
   From This:
   ```javascript
   module.exports = {
    title: "VuePress Generated",
    //description : "use for meta description",
    //base: "/", //Use This for netlify deploy
    base: "/" + process.env.REPOSITORY + "/",
    config: (md) => {
   ```
   To This:
   ```javascript
   module.exports = {
    title: "VuePress Generated",
    //description : "use for meta description",
    base: "/", //Use This for netlify deploy
    //base: "/" + process.env.REPOSITORY + "/",
    config: (md) => {
   ```
   For netlify commiting your code will cause an automatic build out to your site.

8. You can also run the commands to build and develop locally before pushing. You tend to want to run the build first before the dev just to see if anything you added gets errors.
   ```shell
   yarn docs:build
   yarn docs:dev
   ```
   