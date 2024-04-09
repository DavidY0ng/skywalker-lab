<script lang="ts">
	import Icon from '@iconify/svelte';
	import IntersectionObserver from 'svelte-intersection-observer';
	import { fly, scale, slide } from 'svelte/transition';
	import { quintOut } from 'svelte/easing';

	let node: any;
	let node2: any;

	const content = [
		{
			title: 'Our Value',
			description:
				'Pioneering transformative solutions, we harness the full potential of Web3 technology, driving innovation and empowering growth in the digital landscape.'
		},
		{
			title: 'Our Vision',
			description:
				'To foster a future where Web3 technology serves as a catalyst for positive global change, driving innovation, inclusivity, and empowerment across all sectors of society.'
		},
		{
			title: 'Our Mission',
			description:
				'To lead the integration and advancement of Web3 technologies, empowering businesses and individuals with transformative solutions that unlock new opportunities.'
		}
	];
</script>



		<div
			class="relative h-full overflow-hidden bg-black bg-[url('/assets/img/background/product-section-background-img.jpg')] bg-no-repeat bg-cover bg-right justify-center flex"
		>
			<div class=" max-w-[1400px] flex lg:my-[120px]">
				<div class="flex flex-col">
					<!-- first section -->
					<IntersectionObserver element={node} let:intersecting once>
						<div bind:this={node}>
						<div
							
							class="flex flex-col md:flex-row top-0 left-0 lg:items-center w-full h-full lg:justify-center p-[15px] md:p-[30px] text-center md:text-start mt-[100px] lg:mt-[0px]"
						>
							<div class="flex flex-col items-center w-full text-center lg:flex-col">
								{#if intersecting}
									<div class="lg:mr-[50px] md:w-[70%]">
										<div
											transition:fly={{ y: -80, duration: 700, delay: 600 }}
											class=" text-white text-[27px] md:text-[35px] lg:text-[45px] xl:text-[60px] font-bold leading-tight md:pt-[25px]"
										>
											About <span
												class="text-transparent bg-gradient-to-br from-pink-500 to-violet-500 bg-clip-text box-decoration-clone"
												>LAB</span
											>
										</div>
										<div
											transition:fly={{ y: -80, duration: 700, delay: 900 }}
											class="mt-4 mb-8 text-white md:text-xl xl:text-xl"
										>
											We are pioneers in integrating blockchain and Web3 technologies, envisioning a
											future where digital advancements benefit everyone. With a focus on excellence,
											we empower businesses and individuals with Web3's transformative potential,
											driving growth and positive change.
										</div>
									</div>
								{:else}
									<div class=" opacity-0 h-[300px]"></div>
								{/if}
							</div>
						</div>
					</div>
				</IntersectionObserver>
	
					<!-- second section -->
					<IntersectionObserver element={node} let:intersecting once threshold={0.5}>
						<div bind:this={node} class="flex flex-col py-[120px] justify-center">
							<div
								class="flex flex-col lg:items-center w-full h-full lg:justify-center p-[15px] md:p-[30px] text-center md:text-start lg:mt-0"
							>
								<div class="flex justify-center my-10">
									<img
										src="/assets/img/aboutUs/cube 01.png"
										alt="1"
										class="h-[80px] w-[80px] animate-bounce"
									/>
								</div>
								<div class="flex flex-col items-center w-full text-center lg:flex-col">
									{#if intersecting}
									<div class="xl:w-[70%]">
										<!-- {#if intersecting} -->
										<div
											transition:fly={{ y: 80, duration: 900, delay: 600 }}
											class=" text-white text-[40px] md:text-[35px] lg:text-[45px] xl:text-[60px] font-thin leading-tight md:pt-[25px]"
										>
											Embrace the limitless possibilities and boundless digital frontier of Web3
										</div>
										<!-- {/if} -->
									</div>
									{:else}
										<div class="h-[175px]">
											
										</div>
									{/if}
								</div>
							</div>
						</div>
					</IntersectionObserver>
					
	
					<!-- third section -->
					<IntersectionObserver element={node2} let:intersecting once threshold={0.7}>
						<div class="flex flex-col lg:flex-row lg:py-[120px] justify-center lg:px-[30px] px-[15px]">
							{#if intersecting}
							<div
								class="relative flex items-center justify-center w-full mr-6 h-[555px] md:h-[800px] lg:h-full mb-[15px]"
							>
								<img transition:fly={{ x: -80, duration: 900, delay: 600 }}
									src="/assets/img/aboutUs/purple-bg.jpg"
									alt="eth-bg"
									class="absolute lg:w-[96%] lg:h-[97%] w-[96%] h-[97%] bottom-0 right-0"
								/>
								<img transition:fly={{ x: 80, duration: 900, delay: 600 }}
									src="/assets/img/aboutUs/picture3.jpg"
									alt="pic"
									class="absolute lg:h-[97%] lg:w-[96%] w-[96%] h-[96%] top-0 left-0"
								/>
							</div>
							{/if}
		
							<div bind:this={node2}
								class="flex flex-col gap-4 lg:items-center justify-center w-full h-full lg:p-[0px] md:text-start lg:mt-0"
							>
								{#each content as content, i}
									{#if intersecting}
									<div
										transition:fly={{ x: 80, duration: 900, delay: 600 * i }}
										class="p-[32px] card bg-surface-900 lg:min-h-[225px]"
									>
										<div class="flex flex-col w-full text-left lg:flex-col">
											<div class="mb-5 font-bold text-transparent bg-gradient-to-br from-pink-500 to-violet-500 bg-clip-text box-decoration-clone h2">
												{content.title}
											</div>
											<div class="text-white h5">
												{content.description}
											</div>
										</div>
									</div>
									{/if}
								{/each}
							</div>
						</div>
					</IntersectionObserver>
					
				</div>
			</div>
		</div>
	


<style>
	@keyframes bounce {
		0%,
		100% {
			transform: translateY(0);
		}
		50% {
			transform: translateY(-15px);
		}
	}

	.animate-bounce {
		animation: bounce 2s ease-in-out infinite; /* Adjust as needed */
	}
</style>
