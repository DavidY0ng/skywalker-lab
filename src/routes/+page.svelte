<script lang='ts'>
    import Introduction from './home/Introduction.svelte'
    import Features from './home/Features.svelte';
    import AboutUs from './home/AboutUs.svelte'
    import ContactUs from './home/ContactUs.svelte';
    import { scrollToSection } from '$lib/store/store';

    

    $: scrollToSection.subscribe((value) => {
		if (value) {
			const element = document.querySelector(`#${value}`);
			if (element) {
				element.scrollIntoView({ behavior: 'smooth' });
				scrollToSection.set(null);
			}
		}
	});

</script>

<div>
    
    <div id='introduction'>
        <Introduction />
    </div>
    
    <div id="key-features">
        <Features />
    </div>
    
    <div id="about-us">
        <AboutUs />
    </div>

    <div id="contact">
        <ContactUs />
    </div>
    
</div>