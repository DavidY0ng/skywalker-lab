<script lang='ts'>
    import Typed from 'typed.js';
    import { onDestroy, onMount } from 'svelte';
	import Icon from '@iconify/svelte';
	import TopNav from '$lib/components/TopNav.svelte';
	import Box from './box/Box.svelte';
	import IntersectionObserver from 'svelte-intersection-observer';
	import { fly, scale, slide } from 'svelte/transition';
	import { quintOut } from 'svelte/easing';
	

    let typed;
	let node:any;

	onMount(() => {
		import('typed.js').then(({ default: Typed }) => {
			typed = new Typed('#typed', {
				strings: ['Web 3.0'],
				typeSpeed: 80,
				backSpeed: 80,
				backDelay: 2000,
				loop: true
			});
		});
	});
</script>
<IntersectionObserver element={node} let:intersecting once threshold={0.1}>
	<div bind:this={node} class="relative flex justify-center ">
		<img src="/assets/img/background/product-section-background-img.jpg" alt="bg" class=" w-full max-h-[900px] h-[850px] object-cover " />
		<!-- nav bar -->
			<TopNav />
			
		<!-- introduction -->
		<div class="flex max-w-[1400px] w-full h-full absolute">
			<div class="flex">
				<div class="flex flex-col md:flex-row absolute top-0 left-0 lg:items-center lg:-translate-y-[3%] w-full h-full lg:justify-center p-[15px] md:p-[30px] text-center md:text-start mt-[100px] lg:mt-0">
					
					<div class="flex flex-col w-full md:mr-[10px]">
						<h1  class=" text-white text-[27px] md:text-[35px] lg:text-[45px] xl:text-[70px] font-bold leading-tight md:pt-[25px]">
							Navigating the Frontier of <i><span id="typed" class="typed text-primary-500"></span></i>
						</h1>
						{#if intersecting}
						<div transition:fly={{ y: -80, duration: 1200, delay: 600 }} class="mt-4 mb-8 text-white text-md xl:text-xl">
							We invite you to explore the realm of Web 3.0, where we navigate the convergence of innovation
							and decentralization, shaping the future of the internet together.
						</div>
						
				
						<div  transition:fly={{ x: -80, duration: 1200, delay: 600 }} class="mb-10">
							<button class=" bg-gradient-to-r from-primary-500 to-secondary-500 p-4 duration-300 text-white text-lg px-[46px] rounded-none transition ease-in-out delay-150 hover:-translate-y-1 hover:bg-gradiet-to-l hover:from-primary-500 hover:to-tertiary-500">
								Explore Now
							</button>
						</div>
						{/if}
					</div>
					
					{#if intersecting}
					<div transition:fly={{ x: 80, duration: 1200, delay: 600 }} class="flex items-center justify-center w-full pb-10 md:items-start ">
						<img src="/assets/img/introduction/eth.png" alt="bg" class="w-full max-h-[587px] max-w-[587px]" />
						
					</div>
					{:else}
					<div class="flex items-center justify-center w-full pb-10 opacity-0 md:items-start">
						
						
					</div>
					{/if}
				</div>
			</div>
	
		</div>
		
		
		
		
	   
	
		
	
	</div>
</IntersectionObserver>

