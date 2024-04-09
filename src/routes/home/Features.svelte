<script lang="ts">
	import Icon from '@iconify/svelte';
	import IntersectionObserver from 'svelte-intersection-observer';
	import { fly, scale } from 'svelte/transition';
	import { quintOut } from 'svelte/easing';

	let code = '</>';
	let node: any;
	let content = [
		{
			title: 'Tech Advisory',
			subtitle:
				"Beginning with our team's expertise, we offer strategic guidance on integrating Web3 technology to drive innovation and meet business objectives, ensuring sustained growth and competitiveness in the digital landscape.",
			src: 'cypherpunk',
			icon: 'grommet-icons:technology'
		},
		// {
		//     title: "Consultancy",
		//     subtitle: "Our team provides tailored consulting services, leveraging Web3 opportunities to drive sustainable growth and enhance competitiveness for businesses across diverse industries, delivering impactful solutions that maximize value creation.",
		//     src: "",
		//     icon: "ph:cube-bold"
		// },
		{
			title: 'Consultancy',
			subtitle:
				'Our team provides tailored consulting services, leveraging Web3 opportunities to drive sustainable growth and enhance competitiveness for businesses across diverse industries, delivering impactful solutions that maximize value creation.',
			src: '',
			icon: 'ph:cube-bold'
		},
		{
			title: 'Research and Dev',
			subtitle:
				'Pioneering Web3 technologies, our team fosters innovation and shapes digital transformation, contributing to advancements across sectors globally, driving forward the frontier of technology.',
			src: '',
			icon: 'icomoon-free:lab'
		}
	];
</script>


	<div class="">
		
			<div
				class="relative h-full overflow-hidden bg-[url('/assets/img/background/plain-background-img.jpg')] bg-no-repeat bg-cover justify-center flex"
			>
				<div class=" max-w-[1400px] flex">
					<div class="flex flex-col">
						<div
							class="flex flex-col md:flex-row top-0 left-0 lg:items-center w-full h-full lg:justify-center p-[15px] md:p-[30px] text-center md:text-start my-[100px] lg:mt-0"
						>
                        
                        
                      
							<div   class="flex flex-col items-center w-full md:items-start lg:flex-col">
                                <IntersectionObserver element={node} let:intersecting once threshold={0.5}>
                                    <div bind:this={node} class="lg:mr-[50px] w-[70%]">
                                        {#if intersecting}
                                        <div
                                            transition:fly={{ y: -80, duration: 1200, delay: 400 }}
                                            class=" text-white text-[27px] md:text-[35px] lg:text-[45px] xl:text-[60px] font-bold leading-tight md:pt-[25px]"
                                        >
                                            What we do <span
                                                class="text-transparent bg-gradient-to-br from-pink-500 to-violet-500 bg-clip-text box-decoration-clone"
                                                >{code}</span
                                            > ?
                                        </div>
                                        <div
                                            transition:fly={{ y: -80, duration: 1200, delay: 600 }}
                                            class="mt-4 mb-8 text-white md:text-xl xl:text-xl"
                                        >
                                            We're experts at creating personalized blockchain solutions for different
                                            industries, using the latest technology to boost innovation and productivity.
                                        </div>
                                        {:else}
                                        <div class="h-[185px]">
                                            
                                        </div>
                                        {/if}
                                    </div>
                                </IntersectionObserver>
								
								<IntersectionObserver element={node} let:intersecting once threshold={0.6}>
									<div bind:this={node}>
										<div
											class="flex grid grid-cols-1 gap-4 md:grid-cols-1 lg:grid-cols-3 lg:w-[100%]"
										>
											{#each content as content, i}
												{#if intersecting}
													<!-- <div class="text-white p-[32px] card text-start rounded-3xl variant-ringed-tertiary h-[400px]"> -->

													<div
														transition:fly={{ x: -100, duration: 1200, delay: 600 * i }}
														class="text-white p-[32px] card text-start rounded-3xl bg-gradient-to-t from-surface-900 to-gray-900 max-h-[450px] border border-gray-800 shadow-lg"
													>
														<div
															transition:scale={{
																duration: 600,
																delay: 1000 * i,
																opacity: 0,
																start: 2,
																easing: quintOut
															}}
															class=" bg-gradient-to-br from-primary-500 to-violet-500 h-[40px] w-[40px] rounded-full flex items-center justify-center mb-10"
														>
															<!-- <img src='/features/icons/{content.src}.png' alt='icon img' class="h-[60px] w-[60px]"> -->

															<Icon icon={content.icon} width="1.5em" height="1.5em" />
														</div>

														<div class="mb-10 font-bold h2">
															{content.title}
														</div>

														<div class="h5">
															{content.subtitle}
														</div>
													</div>
												{:else}
                                                    <div class="h-[394px]">
                                                        
                                                    </div>
                                                {/if}
											{/each}
										</div>
									</div>
								</IntersectionObserver>
							</div>
						</div>
					</div>
				</div>
			</div>
	</div>

<style>
</style>
