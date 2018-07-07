import VueRouter from 'vue-router';
import Home from './pages/home.vue';
import SquadSelection from './pages/squad-selection.vue';

const router = new VueRouter({
  mode: 'history',
  base: '/',
  routes: [
    { path: '/', name: 'home', component: Home },
    { path: '/new-closure/squads', name: 'new_closure_squads', component: SquadSelection }
  ],
});

export default router;
