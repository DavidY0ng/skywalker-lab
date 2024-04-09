<script>
    import Icon from '@iconify/svelte';
    import { fade } from 'svelte/transition';
    import { scrollToSection } from '$lib/store/store';

    function scrollToSectionHandler(id) {
		scrollToSection.set(id);
	}
</script>

<button transition:fade={{ delay: 250, duration: 500 }} class="animate-bounce fixed w-[50px] bg-gradient-to-r from-primary-500 to-secondary-500 shadow-lg text-white h-[50px] rounded-full bg-white bottom-5 right-5 md:right-10 flex items-center justify-center" on:click|preventDefault={() => scrollToSectionHandler('introduction')}>
    <Icon icon="mingcute:arrow-up-fill" width="2em" height="2em" class=""/>
</button>