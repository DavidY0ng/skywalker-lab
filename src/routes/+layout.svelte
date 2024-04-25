<script>
    import "../app.css";
    import { AppShell } from '@skeletonlabs/skeleton';
    import TopNav from "$lib/components/TopNav.svelte";
    import { scrollToSection } from '$lib/store/store';
    import Icon from '@iconify/svelte';
    import { fade, } from 'svelte/transition';
    import GoUpButton from "$lib/components/GoUpButton.svelte";



    const scrollNavBar = 500
	let show = false

	function onScroll(e) {
		if (e.target.scrollTop > scrollNavBar) {
            show = true
        } else {
            show = false
        }
	}
    
</script>
  
<AppShell  on:scroll={onScroll}>
    <svelte:fragment slot="header">
        <!-- <nav class="{show? "scrolled": ""}">
            <TopNav />

        </nav> -->

    </svelte:fragment>
    <!-- (sidebarLeft) -->
    <!-- (sidebarRight) -->
    <!-- (pageHeader) -->
    <!-- Router Slot -->
    <div class="">
        
        <slot />
        {#if show}
           <GoUpButton />
        {/if}
    </div>
    

    <!-- <div class="max-w-[1400px] p-7">
        <slot />
    </div> -->
    
    
    <!-- ---- / ---- -->
    <svelte:fragment slot="pageFooter">
        <!-- <Footer /> -->
    </svelte:fragment>
    <!-- (footer) -->

</AppShell>