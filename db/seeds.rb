# Accounts
accounts = Account.create([{name: 'Angie', surname: 'Bryant'}, {name: 'John', surname: 'Smith'}, {name: 'Vitaly', surname: 'Kuprin'}])

# blog tags
tags = BlogTag.create([{name: 'webRTC'}, {name: 'Audio Conference Bridge'}])

# blog categories
categories = BlogCategory.create([{category_name: 'Audio Conferencing'}, {category_name: 'Firebar Conferencing'}])

# articles
articles = [{
              subject: 'XOP Networks is the right answer to the Avaya Meeting Exchange',
              text: 'Avaya announces the End of Life and End of Support of its Avaya MX Conference Bridge.
Customer’s with Avaya MX are now being forced to make a decision. Either they move to Avaya’s next generation conferencing platform or find an equivalent replacement solution. For those customers that were using the MX for basic audio conferencing, this is not good news.                For customers caught in is situation, XOP Networks provides a good way out. Its Universal Service Node conference bridge is able to emulate the DTMF controls of different vendor conference bridges, including Avaya’s. Hence, it can provide a seamless transition for basic audio conferencing application without impacting the end users in any way.
In this context please do read XOP Networks press release titled “XOP Networks’ Universal Service Node is the Answer to Avaya Meeting Exchange”
You can read Avaya’s EOL announcement is here: Avaya End of Life Announcement. End of service support expired on October 1, 2017.'
            }, {
              subject: 'XOP Helps Companies Impacted by Sycamore’s Discontinuation of Their SPS-1000 Product',
              text: 'Sycamore Coriant announced the discontinuation of their SPS-1000 product leaving companies using their product in a difficult situation to continue to serve their clients. Ongoing support for the product is provided by a Chinese company SYSTEMCOM,.LTD. Sycamore is one of the multiple vendors that this company provides support for. Customer’s with Sycamore’s SPS-1000 product are now have a dilemma. They can continue with their current SPS-1000s and get support for it from the Chinese company or they can replace the SPS-1000 with XOP Networks Universal Services Node Conference bridge product. XOP Networks is a US company that is head quartered in Dallas, TX.

XOP Networks has extensive financial services industry experience having deployed tens of thousands of ARD, MRD and Hoot-n-Holler capable conferencing ports worldwide.

For customers caught in is situation, XOP Networks provides a good way out. Its Universal Service Node platform matches and/or exceeds the functionality provided by the SPS-1000.

In this context please do read XOP Networks press release titled “Looking for Sycamore’s SPS-1000 Replacement – XOP Networks has the Answer”

For more information about the USN please visit http://www.xopnetworks.com/products/universal-services-node.'
            }, {
              subject: 'Providing Solutions in an Emergency: XOP Networks and the Camanche Fire Station',
              text: 'In emergency situations, having a dependable communication system in place is crucial– missing a call could mean someone not receiving vital help when it is needed the most.

David Schutte, Fire Chief of Camanche Fire Station, had been working with the local telephone company for a number of years, using their Tellabs 291 Firebar Conference system.

Schutte was informed by the phone company that they would no longer be able to provide them with the dial out conferencing service (also known as Firebar service) — as Tellabs the manufacturer had stopped manufacturing the Firebar equipment.

As the volunteer fire department relied on this service, Shutte started looking for alternate solutions immediately.

“I did a bit of online research and found that XOP Networks provided what looked to be some feasible solutions,” says Schutte.

Firebar is used to inform and bring a group of first responders into an audio conference very quickly. It has been relied on as a very fast and efficient way of informing and engaging the first responders. XOP Networks provides its Ringdown Firebar Conference Server (RFCS) product to the phone companies which is a functional replacement for Tellabs 291/292 equipment.

Schutte contacted XOP Networks and was pleased to find out that their Firebar solution was more than equivalent to the Tellabs 291 based Firebar service that their local phone company had been providing.

“And from what I could find, there weren’t any other solutions that made sense for us at Camanche,” Schutte explained.

Implementing the service via an easy-to-use web portal was painless and quick, and XOP Networks worked with Schutte to configure his end of things. The Camanche Fire Station has been using the XOP Networks’ Firebar solution for over 3 years now.

“It’s been a pleasure, being a customer of XOP Networks. They’ve given me a solution – one that is cost-effective and efficient and works well for my 35 member volunteer fire department.”

You can listen to a recording from a Camanche Volunteer Fire Department First Response call here.'
            }, {
              subject: 'Role of WebRTC capable Audio Conference Bridge in Virtual Call Centers',
              text: 'In a typical Call Center an Automatic Call Distributor (ACD) routes in coming visitor calls to support Agents based on their skill set, availability etc. In case of a Virtual Call Center the agents work from their home office. In this case the Virtual Call Center then has to make long distance calls to reach the home based Agents. As these calls last for hours, needless to say, the Virtual Call Center ends up with a large long distance bill. A WebRTC capable Audio Conference Bridge can play an important role in this context. The WebRTC technology adds real time communications (e.g., audio, Video calls) capability to a browser itself. A Virtual Call Center can deploy such an Audio Conference Bridge in its network. Using a WebRTC capable browser (e.g, Google Chrome, Firefox) a home based Agent can then simply dial into the conference bridge over the Internet at no charge. The ACD can route the visitor’s call also into the conference bridge thus allowing conversation between the visitor and the agent to occur on the bridge. By removing the cost of long distance calls to home based agents, this approach makes a virtual call center much more cost effective.'
            }]

articles.each do |article|
  saved_article = BlogArticle.create({
                                       subject: article[:subject],
                                       text: article[:text],
                                       blog_category_id: categories.first.id,
                                       account_id: accounts.first.id
                                     })

  if saved_article
    # tag to article join
    articles.each do |article|
      BlogArticleTag.create({blog_tag_id: tags.first.id, blog_article_id: saved_article.id})
    end
  end
end


# creating team
Team.create([{
               name: 'Sudhir Gupta',
               about: "As the founder and CEO of XOP Networks, Sudhir continues to lead the company on path of continuous innovation. A seasoned executive and a telecommunications visionary, Sudhir’s efforts have led to introduction of several new products into the market place. Before starting XOP Networks he was an Entrepreneur-in-Residence with Austin Ventures, a leading venture capital firm. Earlier he was co-founder and VP of Marketing for Spatial Wireless, a venture capital backed manufacturer of soft-switching based GSM Mobile Switching Centers. Prior to starting Spatial Wireless he was Director of Strategic Marketing at Accelerated Networks – a pioneer of VoDSL industry that had one of the most successful IPOs in year 2000. Before joining Accelerated Networks Sudhir was Chief Technology Officer for Web America Networks, a nationwide ISP with first all digital 56K network. Prior to joining Web America, Sudhir worked in various marketing and product development roles at Alcatel USA (formerly DSC Communications), Rockwell International and United Technologies. Through various work experiences, Sudhir brings executive leadership skills along with more than 35+ years of excellent strategic marketing and product development experience with technologies, such as Wireless Soft switching, VoIP, AIN, Digital switching, ATM/ Frame Relay, Digital Video, Voice and Computer Telephony. He holds a patent on 'Wideband Multi-point Data Bridging' system.",
               img: nil,
               position: "CEO"
             }, {
               name: 'David Trusty',
               about: "David brings 30+ years of telecommunications engineering and software development experience to XOP Networks. His background includes working for MCI, DSC Communications, Alcatel USA, as well as several startup companies. At these companies he was instrumental in the development of complex telecommunications products including Class 4 switches, Service Nodes, Service Control Points, and Voice Over IP based soft-switches. David leads product architecture and software engineering activities at XOP Networks. He is a highest honors graduate of the University of Texas.",
               img: nil,
               position: "position"
             }, {
               name: 'Doug Jacobs',
               about: "Doug brings over 35 years of sales and marketing experience to XOP Networks. Previously, he held senior positions at Alcatel, Lucent and DSC Communications and four startup’s, where he managed global sales, marketing and service to enterprises, LEC’s, CLEC’s, major long distance companies and the competitive long distance companies. Doug was previously a member of the Alliance for Telecommunications Industry Solutions Board and the Association to Advance Collegiate Schools of Business Board. He is experienced in wire line, wireless and broadband industry segments for enterprises and service providers with emphasis on market positioning and sales for packet and circuit switching, optical transmission, access, intelligent network and GSM based products.",
               img: nil,
               position: "position"
             }, {
               name: 'Hugh Le',
               about: "Hugh brings 20+ years experience in the telecommunications where he was successful in building several effective customer-focused systems focusing on groups of multi-national company. He has a very collaborate style that leads to resolving issues in timely manner. Prior to joining XOP Networks, he held staff engineering position at Toshiba Telecommunication System Division Corporation validating the most advanced capabilities in VoIP and IP based office phone systems. He is a professional engineer with BS degree in electrical engineering with programming skills in Assembly, C, C++, Java, and Visual Basic languages. When he is not working, he enjoys church media team that uses technology in the form of sound, video, lighting, and graphics.",
               img: nil,
               position: "position"
             }, {
               name: 'Tony Zhu',
               about: "Tony brings 30+ years of engineering and management experience to XOP networks. Before joining XOP Networks, he was a senior manager at Cisco Systems, where he led a team of 20+ engineers to provide product architecture and technical vision, refine feature backlog with product owners, and spearhead high level design discussions for new features. He managed both US and offshore call processing software development teams of Cisco Unified Communication Manager (CUCM) releases, oversaw the development, implementation and execution of project plans, and ensured that scope and schedule were established for product initiatives. Prior to joining Cisco, he was a software development manager at Alcatel USA (formerly DSC communications) in the AIN department. Tony has major development experiences in Cisco Call Manager, VoIP, SIP, SCCP, CTI, Q.SIG. AIN, SS7, ISDN. He graduated from Texas A&M with a Masters in Engineering.",
               img: nil,
               position: "position"
             }])


products = [
  {
    name: 'Universal Services Node',
    slogan: 'Extraordinary Value',
    overview: 'XOP Networks’ Universal Service Node scales from 24 ports to 16,000 ports. It provides multiple Value Added Service (VAS) applications on one platform. All services can be accessed via VoTDM and/or VoIP ports or both. The Service Providers such as Independent Operating Companies (IOCs) and Mobile Operators depoy USN in their networks to offer multiple value added services to their subscribers from the same platform. Having both TDM and VoIP interfaces, the product allows them to migrate their VAS offerings from TDM to VoIP networks on their own timeline. Enterprise customers deploy USNs in their networks to improve employee productivity and enhance business continuity. The USN’s multi-application approach cuts down the CapEx and OpEx significantly compared with the traditional one application, one platform approach.',
    purpose: 'Digital Collaboration Bridge (DCB) addresses the needs of demanding conferencing users. This appliance integrates with an organization’s existing telephone and data network.',
    top_img: nil,
    bottom_img: nil,
    features: [
      {icon: nil, title: 'Offers multiple Value Added Service applications in one integrated platform', description: '', list_style: false, highlighted_style: false},
      {icon: nil, title: 'Services are accessible through TDM network, VOIP network or both', description: '', list_style: false, highlighted_style: false},
      {icon: nil, title: 'Deployable as a pair of Hot Standby Servers at different geographical locations', description: '', list_style: false, highlighted_style: false},
      {icon: nil, title: 'Modern & Robust Technology', description: 'Our Universal Services Node platform is based on Linux Operating System and can be installed on industrial grade physical servers and VMware based virtual machines.', list_style: false, highlighted_style: true},
      {icon: nil, title: 'Cut Costs by 75% Having One Platform', description: 'Replace multiple single application platforms with one Universal Service Node platform.', list_style: false, highlighted_style: true},
      {icon: nil, title: 'Audio Conferencing', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Web Conferencing', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Video Conferencing', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Hoot and Holler', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Click to Call', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Mass Notification', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Enhanced Firebar', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Instant Conferencing', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Mobile Conferencing', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Visual Voicemail with One Number', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Voice SMS', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Group SMS', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Find-me/Follow-me', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Pager Blast', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Changed Number Announcements', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Automatic Number Announcements', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Crew Call', description: '', list_style: true, highlighted_style: false}
    ]
  },
  {
    name: 'Digital Collaboration Bridge',
    slogan: 'Great Meeting Experiance',
    overview: 'XOP Network’s Digital Collaboration Bridge (DCB) addresses the needs of demanding conferencing users. This appliance integrates with an organization’s existing telephone and data network infrastructure bringing advanced audio and web collaboration capabilities in-house. With DCB, a Moderator can easily record the web collaboration session. The resulting MP4 file can then be downloaded and played back on any PC or media player.',
    purpose: 'The Universal Service Node (USN) enables improved productivity by providing multiple Value Added Service applications on a single platform.',
    top_img: nil,
    bottom_img: nil,
    features: [
      {icon: nil, title: 'Used for day-to-day conferencing needs', description: '', list_style: false, highlighted_style: false},
      {icon: nil, title: 'Scales from 8 ports to 480 ports', description: '', list_style: false, highlighted_style: false},
      {icon: nil, title: 'Linux Operating System, works with TDM and VoIP Networks', description: '', list_style: false, highlighted_style: false},
      {icon: nil, title: 'ROI in 8-10 months', description: '', list_style: false, highlighted_style: false},
      {icon: nil, title: 'Easy to Use', description: 'Employees and customers can enjoy audio conferencing, video conferencing and desktop sharing - all in one integrated application.', list_style: false, highlighted_style: true},
      {icon: nil, title: 'Cost Effective', description: 'Save money by having your own in-house conference bridge instead of outsourced conferencing services.', list_style: false, highlighted_style: true},
      {icon: nil, title: 'Ad-hoc audio conferences', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Reservation based conferences', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Progressive dial out conferences', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Desktop sharing', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Presentation sharing with annotation', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'White-boarding with annotation', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'In-conference controls via Web portal', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Outlook Integration', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Real Time view of active conferences', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Transfer participants between conferences', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Merge conferences', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Record/play back using Microsoft Media Player', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Secure entry based PIN, Dialed Number (DNIS) or Caller ID (ANI)', description: '', list_style: true, highlighted_style: false}
    ]
  },
  {
    name: 'Ringdown Firebar Conference Server',
    slogan: 'Safety You Can Count On',
    overview: 'XOP Networks’ Ringdown Firebar Conference Server scales from 8 ports to 96 ports. It provides direct termination for analog (Red) phones and IP based SIP phones. These crash phone systems are typically deployed in campus locations that are prone to emergency situations, e.g., Airports, Air Force Bases, Chemical plants, Oil and gas installations etc. A person close to the emergency can simply lift the handset on any (or designated) RFCS connected phone and trigger a dial out to the other phones. As first responders answer these calls they are automatically placed into a conference with the initiator. A unique aspect of XOP Networks’ RFCS is its ability to also interface with on-site PBX or IP PBX. This allows people outside the immediate emergency area to be reached via the PSTN. The XOP Networks RFCS systems can be deployed in high availability (99.999%) configuration.',
    purpose: 'Ringdown Firebar Crash Net Conference Server saves lives by notifying first responders in a timely manner.',
    top_img: nil,
    bottom_img: nil,
    features: [
      {icon: nil, title: "Drop in replacement for Tellab's 291/292 analog Firebar system", description: '', list_style: false, highlighted_style: false},
      {icon: nil, title: 'Allows migration to SIP based IP phones', description: '', list_style: false, highlighted_style: false},
      {icon: nil, title: 'Scales from 8 ports to 96 ports', description: '', list_style: false, highlighted_style: false},
      {icon: nil, title: 'Efficient Operation', description: 'In an emergency an initiator can simply lift a handset to trigger the dial out process to bring first responders into a quick audio conference.', list_style: false, highlighted_style: true},
      {icon: nil, title: 'Integrated System', description: 'Ability to start with an analog based Firebar system and over time migrate it to an IP based Firebar system.', list_style: false, highlighted_style: true},
      {icon: nil, title: 'Scalable from 8 ports to 96 ports', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Standalone Crash-net Ringdown Firebar equipment', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Industrial Grade Server with hot swappable hard drives', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Virtualized Server Support', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Available in fully redundant High Availability configurations', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'FXS Interface for direct connectivity to Analog (RED emergency) Phones', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'PSTN and SIP/VoIP connectivity', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Tellabs 291/292 or other similar Firebar equipment replacement', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Web Portal for provisioning and administration', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Web Portal for viewing line status (on-hook, off-hook, ringing etc.)', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Web Portal for viewing and controlling on going Crashnet conferences', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Built-in recording capability', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Scheduled (Daily, Weekly etc.) recurring dial-outs for routine automated Crashnet testing', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Multiple designated trigger phones', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Connectivity to Public Telephone Network (optional) via onsite PBX or IP PBX', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Support for Long Loop lengths (30,000 feet)', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Hardened for outside plant deployment', description: '', list_style: true, highlighted_style: false}
    ]
  },
  {
    name: 'Group Alert & Conference Server',
    slogan: 'Safety You Can Count On',
    overview: 'XOP Networks, Inc’s Group Alert and Conference Server (GACS) can be used for sending thousands of messages quickly to a large audience and  establish a quick dial-out audio conference between key decision makers, A moderator can use a simple CSV file upload to create multiple call out groups. Using the web portal, a moderator can view calls being delivered in real time. The calls can be sent over multiple iterative passes automatically. All call related activity is logged and promptly displayed, including termination status e.g., busy, no answer, recorded on answering machine etc. The voice calls can be sent over TDM network or VoIP/SIP network.',
    purpose: 'Group Alert and Conference Server (GACS) allows organizations to send voice blasts, SMS blasts, email blasts – individually and/or simultaneously.',
    top_img: nil,
    bottom_img: nil,
    features: [
      {icon: nil, title: "Drop in replacement for Tellab's 291/292 analog Firebar system", description: '', list_style: false, highlighted_style: false},
      {icon: nil, title: 'Allows migration to SIP based IP phones', description: '', list_style: false, highlighted_style: false},
      {icon: nil, title: 'Scales from 8 ports to 96 ports', description: '', list_style: false, highlighted_style: false},
      {icon: nil, title: 'Efficient Operation', description: 'Send voice blast, SMS blast, email blast either individually or in any combination.', list_style: false, highlighted_style: true},
      {icon: nil, title: 'Customization', description: 'View outgoing messages in real time on a web portal.', list_style: false, highlighted_style: true},
      {icon: nil, title: 'Record messages proactively or in real time', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Record messages in your own voice', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Create messages via Text to Speech', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Import .WAV files', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Send messages iteratively using nested loops', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Schedule message delivery with recurrence', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Choose Caller-ID to send', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Skip detected answering  machines', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Control speed of message delivery', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Secure delivered messages by using access codes', description: '', list_style: true, highlighted_style: false}
    ]
  },
  {
    name: 'Visual Voicemail Server',
    slogan: 'Random Access',
    overview: 'XOP Networks, Inc’s Voice Mail Server (VMS) is a next generation fully featured  visual voicemail system that can scale from 100s to thousands of mail boxes. It can be used effectively when an enterprise or a service provider needs to migrate its voicemail resources from TDM to all IP environment.',
    purpose: 'Voice Mail Server (VMS) is a next generation visual voicemail system that allows random access to voicemails from a web portal.',
    top_img: nil,
    bottom_img: nil,
    features: [
      {icon: nil, title: "Thousands of Voicemail boxes with up to 30 minute storage each", description: '', list_style: false, highlighted_style: false},
      {icon: nil, title: '8-480 Ports per Chassis', description: '', list_style: false, highlighted_style: false},
      {icon: nil, title: 'Supports both TDM and VoIP/SIP Trunks.', description: '', list_style: false, highlighted_style: false},
      {icon: nil, title: 'Save Time', description: 'Retrieve messages in any order as opposed to traditional approach of sequential access', list_style: false, highlighted_style: true},
      {icon: nil, title: 'Flexible', description: 'Using built in find me capability locate the person before offering voicemail option', list_style: false, highlighted_style: true},
      {icon: nil, title: 'Enterprise Voicemail', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: '“Voicemail Central” – multiple telephones associated with one mailbox', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Subscriber Access to Voicemail via Web Portal and mobiles', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Voicemail to Email', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Sub-mail Boxes', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Announcement Only Boxes', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Message Waiting Indication – SMDI', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Message Waiting Indication using SIP', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Message Waiting Indication via Phone Call', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Web Portal based System Administration', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Multiple Mailbox Configuration Options', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Find-me before Voicemail Deposit', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Back, Pause, Forward', description: '', list_style: true, highlighted_style: false},
      {icon: nil, title: 'Secure Voicemail Retrieval based on Password or ANI', description: '', list_style: true, highlighted_style: false},
    ]
  }
]

products.each do |product|
  saved_product = Product.create({
                                   name: product[:name],
                                   slogan: product[:slogan],
                                   overview: product[:overview],
                                   purpose: product[:purpose],
                                   top_img: product[:top_img],
                                   bottom_img: product[:bottom_img]
                                 })

  if saved_product && product[:features]
    product[:features].each do |feature|
      ProductFeature.create({
                              icon: feature[:icon],
                              feature: feature[:title],
                              description: feature[:description],
                              list_style: feature[:list_style],
                              highlighted_style: feature[:highlighted_style],
                              product_id: saved_product.id
                            })
    end
  end
end

# ----------------------------------------


# FILES

file_categories = [
  {name: 'Data Sheets', files: [
    {
      name: 'Digital Collaboration Bridge Data Sheet',
      text: 'The XOP Networks Digital Collaboration Bridge (DCB) is the right choice when deciding to deploy your own advanced conferencing solution. With your own in-house system you are not only allowing employees to be more productive in their interactions with customers,partners and fellow employees,you are also controlling increasing monthly costs associated with outsourced conferencing services.',
      file_type: 'pdf',
      file_size: '2663876',
      source: '79197_XOP_Networks_DCB_Data_Sheet.pdf'
    },
    {
      name: 'Group Alerting And Conference Server Data Sheet',
      text: 'Today organizations realize they have a need for a voice based mass notification system. In the past, such communication has been handled by outsourced service providers.The cost of an outsourced service can be significant - sometime reaching $1 or more per individual per year.',
      file_type: 'pdf',
      file_size: '2878483',
      source: 'XOP_Networks_Mass_Notification_Data_Sheet.pdf'
    },
    {
      name: 'Voice Mail Server Data Sheet',
      text: 'Voicemail is a "must have" revenue generating service for most service providers. As service providers plan the migration of their networks from a legacy circuit switched environment to packet switched environment, the challenge is, "how do we move our current Voicemail subscriber base?"',
      file_type: 'pdf',
      file_size: '2566296',
      source: 'XOP_Networks_Voicemail_Data_Sheet.pdf'
    },
    {
      name: 'Universal Service Node Data Sheet',
      text: "XOP Network's Universal Service Node (USN) is a carrier grade platform that offers multiple value added services in one integrated platform thus eliminating the need to deploy multiple unique solutions from multiple vendors. This approach has several advantages;",
      file_type: 'pdf',
      file_size: '3559918',
      source: 'XOP_Networks_Universal_Service_Node_Data_Sheet.pdf'
    },
    {
      name: 'Universal Service Node Product Information Folder',
      text: "We develop and market next generation value added service platforms for small, medium and large enterprise and service providers—worldwide. Our Universal Service Node product supports Audio Conferencing, Web Conferencing, Desktop Video Conferencing, Enhanced Firebar/IP Ring down conferencing, Command & Control Conferencing, Hoot-n-Holler Conferencing, Mass Notification, Group SMS, Enhanced Voicemail and Voice SMS applications. All of these applications are accessible over legacy TDM and next generation VoIP networks.Our applications find their uses in many vertical markets including Service Providers, Independent Telcos, Military establishments, City/County governments and small, medium large Enterprises.",
      file_type: 'pdf',
      file_size: '2252437',
      source: 'USN_Product_Information_Folder_Rel_5_0_v7.pdf'
    },
    {
      name: 'JITC Approval Letter',
      text: "The XOP Networks USN – 16 with Software Release 4.3.1 is hereinafter referred to as the system under test (SUT). The SUT met all of the critical interface and functional interoperability requirements of the Unified Capabilities Requirements and is certified for use within the Defense Switched Network (DSN) as a Meet-Me Conference Bridge (CB). The SUT is certified for use with any Small End Office (SMEO) or Private Branch Exchange (PBX) that is listed on the Unified Capabilities (UC) Approved Products List (APL). There must be at least two SUTswhen implemented with a SMEO or PBX because the implementation requirement is for two separate bridges, each of which has the capacity of at least ten conferees.",
      file_type: 'pdf',
      file_size: '63480',
      source: 'JITC-approval-letter.pdf'
    },
    {
      name: 'XOP Networks Interoperability Matrix January 1 2013',
      text: "XOP Networks Universal Service Node (USN) and other products are deployed in Carrier and Enterprise networks. In such networks our products interface with a number of third party PBXs, IP PBXs, Central Office Switches, Soft Switches, Media Gateways and back office network elements.",
      file_type: 'pdf',
      file_size: '90468',
      source: 'XOP-Networks-Interoperability-Matrix-January-1-2013.pdf'
    },
    {
      name: 'XOP High Availability Data Sheet',
      text: "The XOP Networks High Availability feature allows your service to survive failure conditions. Add one or more fully redundant media processing servers to your network.",
      file_type: 'pdf',
      file_size: '41256',
      source: 'high_availability.pdf'
    },
    {
      name: 'XOP Incident Management Conferencing',
      text: "The XOP Networks Incident Management Service allows you to monitor and coordinate groups of conferences from a browser-based management station. Use your web browser to simultaneously interact with multiple conference rooms.",
      file_type: 'pdf',
      file_size: '54700',
      source: 'incident_management.pdf'
    },
    {
      name: 'XOP LDAP Data Sheet',
      text: "The XOP Networks LDAP feature allows you to use your company’s directory server.",
      file_type: 'pdf',
      file_size: '37369',
      source: 'ldap.pdf'
    },
    {
      name: 'XOP SNMP Data Sheet',
      text: "The XOP Networks SNMP feature allows your company’s Network Manager and Syslog server to monitor the XOP system.",
      file_type: 'pdf',
      file_size: '43645',
      source: 'snmp.pdf'
    }
  ]},
  {name: 'Case Studies', files: [
    {
      name: 'Crashnet System Replacement',
      text: "The XOP Networks’ Ringdown Firebar Conference Server meets all requirements, in an economical and highly reliable Linux based platform that can be scaled from 8 to 96 ports, as illustrated in the following application of a Primary and Secondary Crash Network.",
      file_type: 'pdf',
      file_size: '120486',
      source: 'Case_Study_CrashNet_System_Replacement.pdf'
    },
    {
      name: 'Using Click-To-Huddle in a call center',
      text: "Call centers allow members of the public to call a group customer service agents. Typically there are more members of the public calling than there are customer service agents, so the callers need to wait in a call queue. A specialized software element, called an Automatic Call Distributor (ACD) decides when a call from the call queue is to be connected to a customer service agent.",
      file_type: '',
      file_size: '',
      source: ''
    }
  ]},
  {name: 'Solutions Brochures', files: [
    {
      name: 'Enterprise',
      text: "With Firebar Conferencing, first response teams and safety organizations can conduct conference sessions during emergencies with both internal and external agencies. All Firebar conferences are automatically recorded.A useful tool for training purposes or situation debriefs.",
      file_type: '',
      file_size: '',
      source: ''
    },
    {
      name: 'Higher Education',
      text: "With conferencing, administrators, safety or police organizations can conduct internal conference sessions to gather information and coordinate response plans. Additional participants can be added from a predefined list or added on an ad-hoc basis.",
      file_type: '',
      file_size: '',
      source: ''
    },
    {
      name: 'K-12 Campuses',
      text: "With Firebar Conferencing administrators, safety organizations, police and fire can have internal conference sessions during emergencies. For everyday use utilize the ‘meet me’ conferencing capabilities for regularly scheduled planning meetings.",
      file_type: '',
      file_size: '',
      source: ''
    },
    {
      name: 'Local Government',
      text: "With Firebar Conferencing administrators, safety organizations, police and fire can have internal conference sessions during emergencies. For everyday use utilize the ‘meet me’ conferencing capabilities for regularly scheduled planning meetings.",
      file_type: '',
      file_size: '',
      source: ''
    },
    {
      name: 'RFCS Presentation June 2012',
      text: "Ringdown Firebar Conference Server Operation",
      file_type: '',
      file_size: '',
      source: ''
    }
  ]},
  {name: 'Managed Service Brochures', files: [
    {
      name: 'Business Voicemail Service Brochure',
      text: "'I am a single man insurance company. I am on the road most of the day, visiting with clients or taking care of their insurance problems. I used to hire an answering service to take care of my calls while I was out of my office. I was never sure if all my callers were get-ting adequate attention. One of my clients got into an accident and called my office. My answering service was busy with personal chores and could not attend customer’s call. Needless to say, I lost that customer. I looked around for a better solution and found out about XOP Networks Voicemail Central service.' - John Southerland, Plano, Texas",
      file_type: '',
      file_size: '',
      source: ''
    },
    {
      name: 'Reachout and Connect Service Brochure',
      text: "'I am seventy five years old and suffer from severe arthritis in my knees. One afternoon I tripped and fell down while walking in the neighborhood. I could not get up on my own and no one else was around. Fortunately I was carrying my cell phone with me. I pressed the ‘ReachOut and Connect’ service button. Within seconds I was talking to my three sons and my daughter and mydaughter-in-law. On the call, we decided which one of my children was closest to me who could come and take me to the emergency room.' - John Southerland, Plano, Texas",
      file_type: '',
      file_size: '',
      source: ''
    },
    {
      name: 'Private 911 Service',
      text: "'I am a college student. Sometimes I stay late at the university library for preparation of exams. One day when walking towards the bus stand I noticed that three men were following me. I got scared. Fortunately I was carrying my cell phone with me.I pressed the ‘Private 911’ service button. Within seconds I was talking to my two brothers, my father and one of my cousins. I told them where I was and what was happening. Turns out that one of my brothers was close by. He came quickly and a potentially dangerous situation was averted.' - Monica Bajaj, Delhi University Student",
      file_type: '',
      file_size: '',
      source: ''
    },
    {
      name: 'Firebar Emergency Conferencing Service Brochure',
      text: '"Camanche Fire Department, Clinton County, Iowa has about 30 ‘on call’ Volunteer Firefighters and EMTs. We used to purchase the Firebar conferencing service from our local phone company for contacting our volunteers.Because of upgrades to their network (i.e., fiber to home networking) the phone company decided not to offer this service anymore. Luckily we found XOP Networks Firebar Emergency Conferencing service through a web search. We switched to XOP’s service and have been using it on daily basis.The service is functionally equivalent to what we used to have before. It can call our volunteers at their previous landline numbers and in addition also on their cell phones. This increases the probability of reaching the right volunteer significantly. Other thing I like about the XOP service is access to their server’s web portal. Earlier whenever I needed to add a person to the group or edit his/her phone number, I had to make a written request to the phone company. The company could take up to a week to implement the change. Now I have direct access to the XOP web portal. I can login over the Internet at any time and make the change myself." - Dave Schutte, Fire Chief',
      file_type: '',
      file_size: '',
      source: ''
    }
  ]},
  {name: 'Best Practices', files: [
    {
      name: 'USN DVD Deployment',
      text: 'Best practices for deploying Universal Services Node platform.',
      file_type: 'pdf',
      file_size: '948260',
      source: '0462-USN-Software_Deployment_Using_DVD_Images4334-3.pdf'
    }
  ]},
  {name: 'Quick Start Guides', files: [
    {
      name: 'Mass Notification Service Quick Start Guide',
      text: 'View the Mass Notification Service Quick Start Guide.',
      file_type: 'pdf',
      file_size: '421178',
      source: 'Mass_Notification_Service_Quick_Start_Guid.pdf'
    },
    {
      name: 'Firebar Quick Start Guide',
      text: 'View the Firebar Quick Start Guide.',
      file_type: 'pdf',
      file_size: '424732',
      source: '94533_Firebar_Service-Quick_Start_Guide.pdf'
    },
    {
      name: 'One Number Service with Voicemail Guide',
      text: 'View the One Number Service with Voicemail Guide.',
      file_type: 'pdf',
      file_size: '307375',
      source: '56650_One_Number_Service_Quick_Start_Guide_Rev1.0.pdf'
    },
  ]},
  {name: 'Company Info', files: [
    {
      name: 'Company Info',
      text: 'View details about XOP Networks in our company info brochure.',
      file_type: 'pdf',
      file_size: '28425',
      source: 'XOPcorporatebackgrounder-1.pdf'
    }
  ]},
  {name: 'Warranty Support', files: [
    {
      name: 'XOP Networks Hardware Warranty Service Description',
      text: 'The hardware warranty service is intended to provide continuity of such business operations during the period in which XOP Networks equipment is undergoing repair or upgrade',
      file_type: 'pdf',
      file_size: '38111',
      source: 'HardwareWarrantyServiceDescription.pdf'
    },
    {
      name: 'XOP Networks Software Maintenance Service Options',
      text: 'This document describes Software Maintenance Service options provided by XOP Networks. XOP Networks provides two software maintenance service packages i.e Basic and Advanced.',
      file_type: 'pdf',
      file_size: '42961',
      source: 'SoftwareMaintenanceServiceOptionsDocument.pdf'
    }
  ]},
  {name: 'Interoperability Guide', files: [
    {
      name: 'Interoperability Matrix',
      text: 'XOP Networks Universal Service Node (USN) and other products are deployed in Carrier and Enterprise networks. In such networks our products interface with a number of third party PBXs, IP PBXs, Central Office Switches, Soft Switches, Media Gateways and back office network elements.',
      file_type: 'pdf',
      file_size: '90468',
      source: 'XOP-Networks-Interoperability-Matrix-January-1-2013.pdf'
    }
  ]}
]

file_categories.each do |category|
  saved_categories = LiteratureCategory.create({
                                                 name: category[:name]
                                               })

  if saved_categories && category[:files]
    category[:files].each do |files|
      Literature.create({
                          subject: files[:name],
                          text: files[:text],
                          file_type: files[:file_type],
                          file_size: files[:file_size].to_i,
                          source: files[:source],
                          literature_category_id: saved_categories.id
                        })
    end
  end
end


# FAQ

faq = [
  {
    subject: 'What is a T1 or E1?',
    description: 'T1 and E1 refer to telephone trunks that carry digitized voice in Time Domain Multiplexed (TDM) channels. T1 based interfaces are pre-dominantly used in USA. Each T1 has 24 voice ports. E1 based interfaces are pre-dominantly used in Europe, Asia and Latin America. Each E1 has 30 voice ports. One voice port equates to one phone call.'
  }, {
    subject: 'What is a VoIP/SIP Trunk?',
    description: 'Voice over IP refers to carriage of voice calls over the Internet. Session Initiation Protocol (SIP) is a signaling protocol that is used for setting up VoIP connections. The VoIP/SIP trunk operates over a standard Ethernet interface.'
  }, {
    subject: 'What is the capacity of a USN?',
    description: 'A USN can handle up to 16 T1 or E1 trunks per chassis. That equates to 384/480 voice channels. The available voice channels can enter/exit the system either over T1/E1 lines or over VoIP Ethernet interface or shared between the two. For example, following configurations are possible:

384 T1 TDM ports and 0 VoIP ports
480 E1 TDM ports and 0 VoIP ports
0 TDM ports and 480 VoIP ports
240 E1TDM ports and 240 VoIP ports'
  }, {
    subject: 'We use legacy TDM based PBX system. What do we need to interface with a USN?',
    description: 'You will need to equip the PBX with additional T1/E1 CAS or ISDN cards to connect one or more T1/E1s between the PBX and the USN.'
  }, {
    subject: 'What is the default configuration of a CAS T1 trunk on the USN?',
    description: 'The default configuration is: E&M, Wink Start, DTMF, DNIS and No ANI.'
  }, {
    subject: 'We use an IP PBX system. What interfaces do we need on the USN?',
    description: 'In an all IP environment the USN will interface with the IP PBX over a VoIP/SIP Trunk. The USN will send/receive voice calls towards/from the IP PBX over this interface.'
  }, {
    subject: 'What if the power is knocked out at our location?',
    description: 'XOP Networks recommends that the equipment be deployed with a minimum of 1000 VA UPS. That will keep the unit running for 1 hour in case of loss of power.

In case of mission critical applications, our customers deploy two geographically redundant systems. The system’s software keeps both sides synchronized 100% of the times using real time data base replication. In case of extended power outage, the surviving system can be used for handing emergency situations.

As a further back up, XOP Networks can keep a copy of customer’s database on its customer care servers and allow use of that server during emergency situations. Please contact XOP Networks Customer Support department if that is required.'
  }, {
    subject: 'Can I place my company logo on the Web Portal?',
    description: 'A customer can upload their own logo in place of XOP Networks logo via the System Configuration page on the admin interface.'
  }, {
    subject: 'What kind of reports can I generate as am administrator?',
    description: 'A system administrator can set up various queries to determine usage by individual moderators, by service type etc.'
  }, {
    subject: 'What is an ISDN PRI?',
    description: 'T1 ISDN PRI refers to a T1 based trunk that uses 23 bearer time slots and 1 signaling time slot. It is also popularly referred to as 23B + D.
E1 ISDN PRI refers to an E1 based trunk that uses 30 bearer time slots and 1 signaling time slot. It is also popularly referred to as 30B + D.'
  }, {
    subject: 'What interfaces does USN support?',
    description: 'USN supports the following TDM interfaces:

T1 ISDN PRI
T1 E&M Wink Start (CAS)
E1 ISDN PRI
E1 R2MF
USN supports the following Voice over IP interface:

VoIP/SIP over Ethernet.
H.323 over Ethernet'
  }, {
    subject: 'What is the incremental capacity of a system?',
    description: 'A USN can handle up to 16 T1 or E1 trunks per chassis. That equates to 384/480 voice channels. The available voice channels can enter/exit the system either over T1/E1 lines or over VoIP Ethernet interface or shared between the two. For example, following configurations are possible:

384 T1 TDM ports and 0 VoIP ports
480 E1 TDM ports and 0 VoIP ports
0 TDM ports and 480 VoIP ports
240 E1TDM ports and 240 VoIP ports'
  }, {
    subject: 'How should the trunking be set up between the PBX and the USN?',
    description: 'You will need a bi-directional Tie trunk between the PBX and the USN.

Inbound to USN: Set up a hunt group with number of channels equal to number of ports on the USN. For example, for a 48 port system set up a hunt group with 48 channels.

Outbound from USN: Calls originating from USN will be received by the PBX which in turn will route them to either internal extensions or to external PSTN numbers.'
  }, {
    subject: 'What is the default configuration of an ISDNT1 trunk on USN?',
    description: 'The default configuration is: NI-2, User Side, DNIS and ANI.'
  }, {
    subject: 'How should the VoIP trunk be configured between the PBX and the USN?',
    description: 'You will need a bi-directional SIP based Tie trunk between the PBX and the USN.

Inbound to USN: Set up a hunt group with number of channels equal to number of VoIP ports on the USN. For example, for a 48 VoIP port system set up a hunt group with 48 channels.

Outbound from USN: Calls originating from USN will be received by the IP PBX which in turn will route them to either internal extensions or to external PSTN numbers. The external connectivity to the PSTN can be via a TDM based T1 trunk or via a VoIP carrier.'
  }, {
    subject: 'How do I know that my USN system is up and running?',
    description: 'If you dial the main bridge number and hear a prompt requesting you to enter a PIN, the system’s voice application is in operational state.

If you can log into the system that means all networking aspects between your computer and the USN server are operational.'
  }, {
    subject: 'Does the system generate any reports automatically?',
    description: 'The system automatically generates a usage and system health report every midnight. It captures previous day’s usage data. The report also tabulates month to date and year to date reports. These reports give sufficient information to the administrator so that he/she can determine if additional capacity is needed. In addition to the usage report, data is provided on the status of various components of the system such as Hard disk drives, Operating system etc.'
  }, {
    subject: 'How do I know when to add ports?',
    description: 'Different businesses have peaks at different times. The administrator can watch all calls on the Real View link. Visually, he/she will be able to tell if the system is running close to its maximum capacity or not. With Release 5.0, the USN will also provide a histogram that displays number of ports in use by the hour.'
  }
]

faq.each do |faqd|
  Faq.create({
               subject: faqd[:subject],
               description: faqd[:description],
               knowledge_base: false
             })
end

knowledge_base = [
  {
    subject: 'What is a FXO port?',
    description: 'FXO stands for Foreign Exchange Office. An FXO port terminates a POTS line from the central ‘office’. XOP Networks provides analog FXO based audio conference bridge. For a 16 port systems, the 16 POTS lines from the Central Office can be connected to the bridge. In this case each FXO port on the bridge appears as a telephone to the central office switch.'
  }, {
    subject: 'What is a FXS Port?',
    description: 'FXS stands for Foreign Exchange Station. You connect a regular analog phone or a ‘station’ to a FXS port. This port provides battery feed to the phone. XOP Networks Ringdown Firebar Conference Server provides FXS ports. In a typical deployment analog Red phones can be connected to it over copper wire pairs.'
  }, {
    subject: 'What is a T1 trunk?',
    description: 'T1 refers to a Time Division Multiplex based carrier routinely used in North America. This interface carries 24 voice channels. Each voice channel uses 64 Kbits/sec. A T1 line also has an 8 Kbits/sec signaling/framing channel. Therefore the bit rate for a T1 carrier is 24 x 64K + 8000 = 1.544 Mb/s.

There are two types of framing formats used with T1 carriers. These are called D4 and ESF.

The T1 carrier needs to maintain a certain 1’s density so that the network equipment at each end can recover timing clock even if no traffic is being carried. There are two mechanisms in use for that purpose. These are referred to as AMI (Alternate Mark Inversion) or B8ZS (bipolar 8-zero substitution).

The older T1 trunks (> than 10 years in service) are generally set up for D4/AMI and those in last 5-10 years are generally set up for ESF/B8ZS.

The XOP Networks equipment supports both flavors of T1s.'
  }, {
    subject: 'What is an E1 trunk?',
    description: 'A communication line that was developed by European standards that multiplexes thirty voice channels and two control channels onto a single communication line. The E1 line uses 256 bit frames and transmitted at 2.048 Mbps.

E1 refers to a TDM (Time Division Multiplex) based carrier used in Europe and South America. Japan uses a variant called J1.'
  }, {
    subject: 'What is a SIP trunk?',
    description: 'SIP Trunk is a telephony term for a Data path that serves the function of a traditional T1 or E1 trunk but uses the SIP (Session Initiated Protocol). This facilitates the integration of voice and data on the same physical carrier.'
  }, {
    subject: 'What is H.23 trunk?',
    description: 'Before SiP became ubiquitous, some early Voice over Data networks were set up using the H.323 protocol.

H.323 is an umbrella recommendation from the International Telecommunications Union (ITU) that sets standards for multimedia communications over Local Area Networks (LANs) that may not provide a guaranteed Quality of Service (QoS). H.323 specifies techniques for compressing and transmitting real-time voice, video, and data between a pair of videoconferencing workstations. It also describes signaling protocols for managing audio and video streams, as well as procedures for breaking data into packets and synchronizing transmissions across communications channels.'
  }, {
    subject: 'What is a Balun?',
    description: 'E1’s can be deployed in a 75 ohm architecture where the signal traveled on Coax cable and used BNC connectors. They can be deployed in a 120 ohm architecture where the signal travels over twisted pair and uses the more familiar RJ-45 connector. A Balun is a device that allows a 75 Ohm E1 to be converted to a 120 ohm E1 (or vise versa) to facilitate connection to equipment that does not support the native connector.'
  }, {
    subject: 'What is a CAS T1?',
    description: 'CAS (Channel Associated Signaling) is a protocol used over T1 and E1 trunks where each DS0 or channel has bits that carry the call control signaling states, ie idle, seize, wink, release. This is inefficient from a network standpoint because the entire DS0 is used to convey just a few bits of signaling before the voice path is established.'
  }, {
    subject: 'What is an ISDN PRI?',
    description: 'An ISDN PRI (Primary Rate Interface) is referred to a trunk that carries signaling for associated voice channels in one common time slot. This is also referred to as Common Channel Signaling. In North America the dominant carrier is a T1 line with 24 time slots. So when a T1 line is configured with 23 bearer channels and one signaling channel it is called ISDN PRI in 23B+D configuration. The protocol also supports higher signaling densities in a architecture called NFAS (Non Facility Associated Signaling) which is not very common.

In Europe, Asia, and Latin America the dominant carrier is an E1 line. An E1 based PRI is configured as 30B+D.'
  }, {
    subject: 'What is ANI?',
    description: 'ANI (Automatic Number Identification) is the field in a CAS call that carries the Caller ID information. In PRI this field is called the Calling Number, In a SiP invite, this is the FROM address. This information is critical for displaying Caller ID at the end device.'
  }, {
    subject: 'What is DNIS?',
    description: 'DNIS (Dialed Number Identification Service) is the field in a CAS call that carries the number dialed commonly called the destination. In PRI this field is the Called Number. In a SIP invite, this is the TO address. This number is used by PBX’s, XOP USN’s, and a variety of other call handling systems to select the menu choices, call routing, and customer service representative information display based on the incoming telephone number.'
  }, {
    subject: 'What is service selection?',
    description: 'Service selection is the term for using either the called number or calling number, or the combination of the two to automatically route calls and launch services. On the XOP USN we can use the ANI or the DNIS or the combination of a specific ANI and DNIS to automatically launch services, ie a call from your cellphone to the USN will automatically put you into your conference as a moderator. It is an excellent way to make it easier for users to access the system because it removes the need to remember and enter a pin code.'
  }, {
    subject: 'How does E&M signaling work on a CAS T1 trunk?',
    description: 'E&M stands for Ear and Mouth. The E&M signaling works with Channel Associated Signaling (CAS) on T1 spans. The signaling states (on-hook, off-hook etc.) are communicated by a sequence of bits (AB or ABCD bits) that are transmitted by stealing bits from the associated PCM based voice channels.'
  }, {
    subject: 'On an ISDN PRI - what is user side? What is network side?',
    description: 'The terms Network and User are designed to refer to the Carrier or Service Provider which is the Network, and the CPE (Customer Premises Equipment)'
  }, {
    subject: 'Does XOP equipment support NFAS?',
    description: 'XOP Equipment can support Non facility Associated Signaling (NFAS) if a customer requires it. By default this capability is turned off to keep the network operation simple. This capability allows a single D channel to be used across multiple T1 based ISDN PRI lines. This capability is rarely used on E1 based PRI lines.'
  }, {
    subject: 'What is a typical configuration for SIP trunk on XOP USN?',
    description: 'A typical configuration for a SIP trunk on XOP Networks equipment is: G.711 codec (Alaw or MuLaw), RFC 2833 for DTMF relay.'
  }, {
    subject: 'What is RFC 2833',
    description: 'On TDM phone circuits the DTMF tones are used to enter dialed digits, PINs, card numbers etc. These DTMF tones are carried inband on the TDM network. These functions are also needed in VoIP network. When compressed voice is used on the VoIP networks, e.g., with G.729a/b or G.723 codecs, DTMF tones get distorted if carried inband. In such cases DTMF tones are carried as data in special packets. The circuitry at the receive end simply reads to the packet to get to the digit pressed. This mechanism of using special packets for carrying DTMF digits is described in RFC 2833. For VoIP networks that uses g.711 codec, it is not necessary to use RFC 2833 as the DTMF tones do not get distorted in that case. The codec used and whether RFC 2833 is used or not is carried with in the SDP part of the SIP INVITE message. Both transmit and receive end agree with the protocol to be used for DTMF relay as part of the initial signaling handshake.'
  }, {
    subject: 'Why is Linux important?',
    description: 'Linux is a open source, much more inherently stable and secure operating system. Being open source it keeps evolving based on the work effort of thousands of developers worldwide. Its roots are based in the UNIX operating system. Several companies re-package the open source software and then market it under their brand names.'
  }, {
    subject: 'Does the USN support H.323?',
    description: 'Yes'
  }, {
    subject: 'What operating system does XOP equipment support?',
    description: 'XOP Networks’ Release 4.x uses CentOS 5.0. Its current software release 5.2 uses CentOS 5.4. We will continue to adopt newer versions of the operating systems going forward based on their compatibility with hardware and features available in a given Linux distribution.'
  }, {
    subject: 'What is Red Hat?',
    description: 'Red Hat is a name of a company that provides Linux distributions. It also provides support for them. For more details please visit its website.'
  }, {
    subject: 'What is CentOS?',
    description: 'It is the name of a LINUX distribution. XOP Networks products with Release 5.0 or higher use CentOS Version 5.4.'
  }, {
    subject: 'What is Host Media Processing (HMP)?',
    description: 'The computing power of CPUs used in PCs and Servers continues to grow. Basic idea behind Host Media Processing is to use the core CPU of a computer to do Digital Signal Processing functions (e.g., echo cancellation, AGC, conferencing etc.) as well in addition to its normal house keeping tasks. Until such powerful CPUs were available, the DSP algorithms used to run on dedicated DSP hardware modules. By terminating a VoIP based SIP trunk on a server that is also running HMP based conferencing software, we can provide conferencing equipment that has no dedicated DSP hardware. Using this approach XOP Networks ships a 1U server that can provide conferencing and other value added services applications for several hundred VoIP ports.'
  }, {
    subject: 'Does XOP equipment support Host Media Processing?(HMP)',
    description: 'Yes, XOP Universal Service Node product supports Host Media Processing. The HMP resources essentially allow the API to work with an abstract layer that mimics hardware modules. So the application software works exactly the same on board based systems as it does on the HMP based systems.'
  }, {
    subject: 'Can XOP USN support TDM inerfaces and SIP trunk based on HMP on the same server?',
    description: 'Yes. We provide systems that have network facing T1/E1 trunk modules and Ethernet port for connectivity to the SIP trunk. The Host Media Processing software runs on the core CPU of the server. This software is provisioned based on the number of total voice ports needed. For example, we can provide a 50 port conference bridge that has a T1 based network module that provides connectivity to 24 TDM ports and has a SIP trunk with 26 channels for connectivity to VoIP network. In this scenario XOP conferencing application will be able to place upto 50 people in a conference room -24 entering from the TDM side and 26 entering from the VoIP side.'
  }, {
    subject: 'What is a CT Bus?',
    description: 'CT Bus refers to Computer Telephony bus. In systems that have multiple dialogic network and conferencing modules, a ribbon cable is connected across all the boards. This cable provides TDM connectivity between the network facing T1 module and the companion conferencing module. CT Bus is also used to combine multiple conferencing modules to build higher density conferencing systems. The CT BUS can support 4096 time slots.'
  }, {
    subject: 'What is RAID?',
    description: 'RAID (Redundant Array of Independent Disks), a system of multiple hard drives for sharing or replicating data. XOP Networks equipment supports disk mirroring between two hard drives using RAID1.

A RAID 1 creates an exact copy (or mirror) of a set of data on two or more disks. This is useful when read performance or reliability are more important than data storage capacity. Such an array can only be as big as the smallest member disk. A classic RAID 1 mirrored pair contains two disks, which increases reliability geometrically over a single disk. Since each member contains a complete copy of the data, and can be addressed independently, ordinary wear-and-tear reliability is raised by the power of the number of self-contained copies. (from Wikipedia).'
  }, {
    subject: 'Can I use my own server for hosting XOP applications?',
    description: 'Yes, XOP can provide specifications for the hardware and a set of Build DVD’s. A customer can then install the software on their server. XOP Customer Support dept. will then enable licenses for appropriate applications via remote access. This capability only applies to SIP/HMP based systems.'
  }, {
    subject: 'What is NEBS?',
    description: 'NEBS (Network Equipment-Building System) describes the environment of a typical United States RBOC Central Office. NEBS is the most common set of safety, spatial and environmental design guidelines applied to telecommunications equipment in the United States. (from Wikipedia).'
  }, {
    subject: 'Can I change the IP address of my USN?',
    description: 'This can be done using a variety of methods. The easiest is to login via the the Centos GUI. and run the netconfig command from the Centos prompt. However, XOP Customer Support has encountered issues with this method and recommends manually changing the settings using the the command line interface. If you have an HMP (SIP or H.323) unit there are some additional settings that need to be changed for the VoIP stack on the admin side for the system to work properly.'
  }, {
    subject: 'What is the difference between a DCB and a USN?',
    description: 'DCB refers to XOP’s audio + web conference bridge. The Universal Service Node is a super set of the DCB in the sense that provides audio+web conferencing plus several other Services such as Visual Voicemail, Mass Notification, Firebar etc.'
  }, {
    subject: 'What is Digital Signal Processing? ',
    description: 'Digital Signal Processing is the science of manipulating digital samples of an analog signal. For example, for audio conferencing, digital samples from different participants are digitally added to create a combined signal. The digitally combined signal is converted back to analog by the end device and fed to the speaker of each participant.'
  }, {
    subject: 'What is Automatic Gain Control? ',
    description: 'Automatic Gain Control is a DSP based approach for normalizing an incoming signal. If the signal is weak, its amplitude is boosted, if it is too ‘hot’, its amplitude is reduced. The changing of the amplitude is done by multiplying the incoming signal with a +/- boost factor.'
  }, {
    subject: 'What is ECHO Cancellation?',
    description: 'Echo gets generated on voicecalls when there is a impedance mismatch at the 2 wire to 4 wire converter. Due to the mismatch part of the signal gets reflected back to the originator. If at the transmit end the reflected signal can be removed then echo will not be heard. The process of removing this unwanted echo is called echo cancellation. This is done using digital signal processing techniques.'
  }
]

knowledge_base.each do |faqd|
  Faq.create({
               subject: faqd[:subject],
               description: faqd[:description],
               knowledge_base: true
             })
end


training_video_categories = [
  {
    name: "Audio Conference",
    videos: [
      {
        subject: 'Introduction',
        link: 'https://youtu.be/YAxGrx9oSGk'
      }, {
        subject: 'Overview',
        link: 'https://youtu.be/OJfewtaSOsc'
      }, {
        subject: 'Set up Conference Room',
        link: 'https://youtu.be/yahen59A_Vo'
      }, {
        subject: 'Use iCal to Invite',
        link: 'https://youtu.be/agK7jvoBIwM'
      }, {
        subject: 'Initiating a Conference',
        link: 'https://youtu.be/QvkncO4TEeA'
      }, {
        subject: 'Realview Control & Monitor Interface',
        link: 'https://youtu.be/YW0nHH4-l4c'
      },
    ]
  },
  {
    name: "Firebar Confercing",
    videos: [
      {
        subject: '(RFCS) – DEMO',
        link: 'https://youtu.be/yCYdk0zU4u4'
      }, {
        subject: 'Introduction',
        link: 'https://youtu.be/V3Bc6N4EnFU'
      }, {
        subject: 'Overview',
        link: 'https://youtu.be/vBRCMQd2nIY'
      }, {
        subject: 'Set up Firebar Conference Room',
        link: 'https://youtu.be/yp5QijV8wuY'
      }, {
        subject: 'Set up Conference Room, Cont.',
        link: 'https://youtu.be/fBqt7fwW4a8'
      }, {
        subject: 'Initiate a Firebar Conference',
        link: 'https://youtu.be/nq1Yp0pk7A4'
      }, {
        subject: 'Set up Number to Trigger a Conference',
        link: 'https://youtu.be/WSy5JVtQd2c'
      }, {
        subject: 'Using Moderator Reports Page',
        link: 'https://youtu.be/actfxx10ts8'
      },
    ]
  },
  {
    name: "Hoot-N-Holler",
    videos: [
      {
        subject: 'Introduction',
        link: 'https://youtu.be/cRM9ydUk8ls'
      }, {
        subject: 'Overview',
        link: 'https://youtu.be/O1CcveGpo6o'
      }, {
        subject: 'Set up Conference Room',
        link: 'https://youtu.be/n7Oc7Uk1Mx0'
      }, {
        subject: 'Set up Supervision Station',
        link: 'https://youtu.be/gsFpnwEBkfQ'
      }, {
        subject: 'Web Control Interface',
        link: 'https://youtu.be/e2q7ZQAvfKw'
      }
    ]},
  {
    name: "Mass Notification",
    videos: [
      {
        subject: 'Training',
        link: 'https://youtu.be/n3IftPpcJkc'
      }, {
        subject: 'Set up Group Alert',
        link: 'https://youtu.be/hVgWetXCf1k'
      }, {
        subject: 'Set up Group Alert, cont.',
        link: 'https://youtu.be/F8icykNAtuw'
      }, {
        subject: 'Initiate Group Alert',
        link: 'https://youtu.be/aennSK8c3yo'
      }, {
        subject: 'Wallet Card',
        link: 'https://youtu.be/X986rPjJyuk'
      }, {
        subject: 'Email Alert',
        link: 'https://youtu.be/F45pz9qxmbM'
      }
    ]
  },
  {
    name: "Web Conference",
    videos: [
      {
        subject: 'Screenshare Demo',
        link: 'https://youtu.be/7g4XCctB5lo'
      }, {
        subject: 'Telemedicine Consult',
        link: 'https://youtu.be/hEFXkI3kXsA'
      }, {
        subject: 'Presenter Moderator Controls',
        link: 'https://youtu.be/-E8OYiV18pE'
      }, {
        subject: 'Moderator Demo',
        link: 'https://youtu.be/mTs0RYXWPo0'
      }, {
        subject: 'Ophthalmology Consult',
        link: 'https://youtu.be/waj7hw7CIOo'
      }, {
        subject: 'Chat Overview',
        link: 'https://youtu.be/I_nhw3EdU3A'
      }, {
        subject: 'Attendee Features',
        link: 'https://youtu.be/v26SMByEmRk'
      }, {
        subject: 'How to set up a Webinar',
        link: 'https://youtu.be/eoxNmSYBL8s'
      }, {
        subject: 'How to Conduct a Webinar',
        link: 'https://youtu.be/mlQKwSmVOVY'
      },
    ]
  }
]

training_video_categories.each do |category|
  saved_catgory = TrainingVideoCategory.create({
                                                 name: category[:name]
                                               })

  if saved_catgory && category[:videos]
    category[:videos].each do |video|
      TrainingVideo.create({
                             subject: video[:subject],
                             link: video[:link],
                             training_video_category_id: saved_catgory.id
                           })
    end
  end
end

testimonials = [
  {
    name: "Keith A. Norman",
    position: "Director at jerseyville fire department",
    text: "We have been using the Firebar service offered to us by GTI, the local phone company here in Jerseyville, IL. GTI uses XOP Networks USN platform for offering this service. We are pleased with the service and the technical support provided to us by GTI and XOP technical staff. Also, the ability to run live from your system while the GTI system was being repaired was outstanding."
  },
  {
    name: "Charles Calvert",
    position: "Director at Intelsat",
    text: "XOP's IP based Hoot-n-holler application is clearly a game changer."
  },
  {
    name: "Mr. Sukanto Aich",
    position: "President Enterprise Limited at Tata Services",
    text: "SMS driven Instant Conferencing has been a great addition to our current set of VAS offerings. This allows our customers to set up on-the-fly dial out conference calls with both on-net and off-net participants."
  },
  {
    name: "Anthony Howland",
    position: "Director at telecom tristar engineering",
    text: "By using XOP Audio and Web Collaboration Bridge, we save several thousands dollars each month."
  },
  {
    name: "Kevin Hamilton",
    position: "VP at grafton technologies Inc, LLC",
    text: "The Firebar product from XOP Networks has filled a crucial need in our community. Emergency responders can be contacted immediately regardless of the telephone company or cell phone provider."
  },
  {
    name: "Cheryl Sanders",
    position: "Associate at the heritage at brentwood",
    text: "We have been using XOP Networks Emergency Mass Notification application to keep our residents informed and to alert them when we are faced with a man made or natural emergencies"
  },
  {
    name: "Ricardo Trinidad",
    position: "Associate at Telecom and Data",
    text: "The Universal Node product has tremendous value. It is quite remarkable that so many applications can work smoothly out of one platform."
  },
  {
    name: "Albert Fisher",
    position: "Director at Telecom Consolidated Telephone",
    text: "We appreciate XOP's effort in integrating our legacy TDM switch with their IP based voice mail platform."
  },
  {
    name: "Hubert Keel",
    position: "Associate at Intelsat",
    text: "Very sophisticated Mass Notification application. I was expecting to go to a scout camp, instead I ended up in a 5 star hotel."
  },
]

testimonials.each do |data, i|
  Testimonial.create({
                       name: data[:name],
                       text: data[:text],
                       position: data[:position]
                     })
end
