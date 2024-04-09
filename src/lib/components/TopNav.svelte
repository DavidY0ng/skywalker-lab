<script>
	import Icon from '@iconify/svelte';
	import { slide } from 'svelte/transition';
    import { scrollToSection } from '$lib/store/store';

	let isExpanded = false;

	function onExpandMenu() {
		isExpanded = !isExpanded;
	}
    
    function scrollToSectionHandler(id) {
		scrollToSection.set(id);
	}
</script>
<div class="max-w-[1400px] flex absolute w-full">
    <div class=" top-0 flex justify-between w-full p-5 text-white md:px-[30px]">

        <div class="font-bold h1">
            <span class="">
                SKYWALKER
            </span>
             
            
            <span
                class="text-transparent bg-gradient-to-br from-pink-500 to-violet-500 bg-clip-text box-decoration-clone"
                >LAB</span
            >
        </div>
        {#if !isExpanded}
            <button on:click={onExpandMenu} class="z-10 lg:hidden">
                <Icon icon="charm:menu-hamburger" width="1.9em" height="1.9em" />
            </button>
        {:else}
            <button on:click={onExpandMenu} class="z-10">
                <Icon icon="maki:cross" width="1.9em" height="1.9em" />
            </button>
        {/if}
    
        <div class="z-10 items-center hidden gap-8 text-lg lg:flex">
            <a href="/#key-features" class=" hover-underline-animation" on:click|preventDefault={() => scrollToSectionHandler('key-features')}>
                Key Features
            </a>
            <a href="/#about-us" class="hover-underline-animation" on:click|preventDefault={() => scrollToSectionHandler('about-us')}>
                About Us
            </a>
            <a href="/#contact" class="hover-underline-animation" on:click|preventDefault={() => scrollToSectionHandler('contact')}>
                Contact
            </a>
        </div>
    
        {#if isExpanded}
            <div
                transition:slide
                class="absolute top-[80%] right-[6%] flex flex-col p-5 rounded-lg variant-glass-secondary h5 z-10 gap-5 px-9"
               
            >
                <button on:click|preventDefault={() => scrollToSectionHandler('key-features')}>Key Features</button>
                <button on:click|preventDefault={() => scrollToSectionHandler('about-us')}>About Us</button>
                <button on:click|preventDefault={() => scrollToSectionHandler('contact')}>Contact</button>
            </div>
        {/if}
    </div> 
</div>


<style>
	.hover-underline-animation {
		display: inline-block;
		position: relative;
	}

	.hover-underline-animation::after {
		content: '';
		position: absolute;
		width: 100%;
		transform: scaleX(0);
		height: 2px;
		bottom: 0;
		left: 0;
		background-color: #b900ca;
		transform-origin: bottom;
		transition: transform 0.25s ease-out;
	}

	.hover-underline-animation:hover::after {
		transform: scaleX(1);
		transform-origin: bottom;
	}
</style>