<script>
	import Icon from '@iconify/svelte';
	let bulletPoints = [
		{
			title: 'Customized Solution',
			icon: 'ant-design:solution-outlined'
		},
		{
			title: 'Expertise',
			icon: 'mdi:tick-network-outline'
		},
		{
			title: 'Reliability',
			icon: 'teenyicons:tick-circle-outline'
		}
	];

	let contactDetails = [
		{
			title: 'Email',
			details: 'lab@skywalker.technology ',
			icon: 'material-symbols:mail'
		},
		{
			title: 'Phone',
			details: '+603-48102476',
			icon: 'mdi:cellphone'
		},
		{
			title: 'Location',
			details: 'No 2-9, The Scott Garden, Jalan Klang Lama, 58000 Kuala Lumpur',
			icon: 'mdi:location'
		}
	];
</script>

<div
	class="relative h-full overflow-hidden bg-[url('/assets/img/background/plain-background-img.jpg')] bg-no-repeat bg-cover justify-center flex w-full "
>
	<div class=" max-w-[1400px] flex w-full justify-between flex">
		
			<div
				class="flex  md:flex-row top-0 left-0 lg:items-center w-full h-full lg:justify-between p-[15px] md:p-[30px] text-center md:text-start my-[100px] lg:mt-0"
			>
				<div
					class="flex flex-col items-center w-full md:items-start lg:flex-row lg:justify-between lg:gap-[60px]"
				>
					<div class="flex flex-col  w-full lg:w-[100%]">
						<div class="lg:mr-[50px] md:text-center mb-[30px]">
							<div
								class=" text-white text-[30px] md:text-[35px] lg:text-[45px] xl:text-[40px] font-bold leading-tight md:pt-[25px] lg:text-start "
							>
							<span class="">
								SKYWALKER
							</span> 
							<span class="text-transparent bg-gradient-to-br from-pink-500 to-violet-500 bg-clip-text box-decoration-clone"
                                >LAB</span
                            >
							</div>
						</div>
						<div class="flex flex-col gap-5 mb-[70px] text-white lg:justify-center text-justify">
                            We're dedicated to guiding you through the complexities of the Web 3.0 landscape with expertise and innovation. 
                            We are your trusted partner in navigating the decentralized future.

							<!-- {#each bulletPoints as point}
								<div class="flex items-center gap-4">
									<div>
										<Icon icon={point.icon} width="1.5em" height="1.5em" />
									</div>
									<div>
										{point.title}
									</div>
								</div>
							{/each} -->
						</div>
					</div>

                    <!-- <span class="hidden lg:flex h-[400px] divider-vertical !border-r-1 !border-primary-500" /> -->

					<div class="flex flex-col items-center lg:items-start w-full lg:w-[100%]">
						<div class="lg:mr-[50px] md:text-center mb-[30px]">
							<div
								class=" text-white text-[22px] md:text-[28px] lg:text-[28px] xl:text-[28px] font-bold leading-tight md:pt-[25px]"
							>
								Contact Us
							</div>
						</div>
						<div class="flex flex-col gap-5 mb-[70px] text-white text-start lg:justify-center">
							{#each contactDetails as point}
								<div class="flex items-center gap-4">
									<div class="text-primary-500">
										<Icon icon={point.icon} width="1.5em" height="1.5em" />
									</div>
									<div>
										{point.details}
									</div>
								</div>
							{/each}
						</div>
					</div>
                    

					<!-- <div class="logo-cloud grid-cols-1 gap-1 w-[80%]">
                        {#each contactDetails as contact}
                            <div class="logo-item ">
                                <span><Icon icon={contact.icon} width="1.2em" height="1.2em" /></span>
                                <span>{contact.details}</span>
                            </div>
                        {/each}
                       
                    </div>
					 -->
				</div>
			</div>
		
	</div>
</div>
