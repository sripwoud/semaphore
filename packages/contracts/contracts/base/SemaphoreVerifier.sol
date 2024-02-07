// SPDX-License-Identifier: MIT
// Part of this file was generated with [snarkJS](https://github.com/iden3/snarkjs).

pragma solidity 0.8.23;

contract SemaphoreVerifier {
    // Scalar field size
    uint256 constant r = 21888242871839275222246405745257275088548364400416034343698204186575808495617;
    // Base field size
    uint256 constant q = 21888242871839275222246405745257275088696311157297823662689037894645226208583;

    // Verification Key data
    uint256 constant alphax = 20491192805390485299153009773594534940189261866228447918068658471970481763042;
    uint256 constant alphay = 9383485363053290200918347156157836566562967994039712273449902621266178545958;
    uint256 constant betax1 = 4252822878758300859123897981450591353533073413197771768651442665752259397132;
    uint256 constant betax2 = 6375614351688725206403948262868962793625744043794305715222011528459656738731;
    uint256 constant betay1 = 21847035105528745403288232691147584728191162732299865338377159692350059136679;
    uint256 constant betay2 = 10505242626370262277552901082094356697409835680220590971873171140371331206856;
    uint256 constant gammax1 = 11559732032986387107991004021392285783925812861821192530917403151452391805634;
    uint256 constant gammax2 = 10857046999023057135944570762232829481370756359578518086990519993285655852781;
    uint256 constant gammay1 = 4082367875863433681332203403145435568316851327593401208105741076214120093531;
    uint256 constant gammay2 = 8495653923123431417604973247489272438418190587263600148770280649306958101930;

    uint256[14][12] VK_POINTS = [
        [
            563562783592406106461234396505774794044312891062077216951605541624542949349,
            16293410697967515504861065986355060225819302510590370360517024529684437085892,
            718666295291146285397081607986058864287612968465033527894198098928522749430,
            10971164449179097832515056670594147898894418081309026322805549037082528587660,
            16397970494781113622140409380710514277504568512202481522431528914560031562762,
            15987991045804318696151558137607070651882190737142560406194591976742796145195,
            19175554796060272870947844726785784415291967441071791144616572094703752022787,
            14708716857471570462880683190724447733812118518043273649838616424043548023127,
            5109703116431086866657790821388182053265093586387384935734011036204399393630,
            1612476077210311180626421664389270104678910550524363357381847966959374674423,
            16028984344157742576452936855797086856968817024956118691418341585143424903639,
            6905323418829609143361434077039383502192920586565275784934386988372483556465,
            5037234187699234788733084505200789125332575456459095878140727750253994537245,
            5152780378461098676484401284161685966625077837157208907964141131514955942959
        ],
        [
            6925326031648378844726759441690273332175949886518827719224741736678266471462,
            8087990171976409378525016197066789089596692733769545253942804888352233244331,
            10115242383701466910539784663900956956505212347433548599529944880163612117847,
            15618724583521291135890928658458637081479213437530496494788106479523123480134,
            19573269191775350978579562905764743103417752180580176229566975904395505694207,
            2381522187377974692257359562587606852360557473353020907100590706767276986457,
            3570865353993345507636525265023758855364727230473021611280650482974485897542,
            3026650225811133060402545160946181194870257210933662802529138266788423022235,
            10948020004642082805202152014062303498984706484599503419636897666877701726029,
            16425328653566008388486740080892552688012772956429074139489785673820307770702,
            20638502839000044414864636985783149953889799151008745227055624454042471377832,
            977321369609271151576827768083353705509746900519279122286818202637470656742,
            18662986393280647182646025762677321210586855801774577114215804961111542726195,
            9182414327249389553719378979750943052880001176853490206379257023646169811116
        ],
        [
            7699900854308622607636895140107457213471038801393300399043779958706267744510,
            7699563868952902688273782470023919811229667532027732585467624469008534197561,
            8605006500231713390564760089884965869867818332514275728271802101761117177706,
            15390497513810955087868026868634948499789494261604405008298272598684585331879,
            1172653041469601107707030355715854571110526375194334139771259673595104816259,
            139822645729727942447876327389754883087551266970976361358585992124005959663,
            807568760006422352594797418374693945705914727214443753238278163089338607471,
            19362805143026565781098954744725161233661862485826387437200176803022106919133,
            9457043262004277983171082100772969689099515860060732671699192102623198243288,
            19229090298682361289811638032020124933114889462217199961448135904896325661193,
            18883326163102164343877677909116984239805709949130729675634413304023108763212,
            2795333364660917174391473381893559091159208514832297547909172862364581446206,
            18012979848063967305324818138773222084850070233834350625943804711450349870116,
            11425098272720529401115253745902976848228234025625773037823969253767737500443
        ],
        [
            9243647856126339588200227750973237380809101852206502177952556679680468734813,
            2561989864654045354260435368824127763249975523256535586391379695256700207392,
            1308059969166897152269078839315249187046718124106168932020710683189419160756,
            18264861452415533737686303596832882667852638121244187636443702248458018416929,
            5735580005765404165535708760854311053102182143614810924129912232734875728422,
            12547270286864340931439010083179993915942911007015778927394042746771813715897,
            17861179987982979247789643870162154315308943006677455616368767345181299723498,
            12520843301982976970226379882714814545061255956743392202788539428471921045815,
            709419095293140562723620898844593712074413125125086760533949250121053456086,
            20254885558410038279405227446341995510955697359900050994091569463713580982280,
            8876829807505794597615690202974184696287415186921508358861381955321520402876,
            9692396410060123455009190221005078571838194435772371581970098240972280778466,
            11541729643712807778212647011796800767186857085220105751644556558522744760878,
            7117533920695574619512162711113223946930183977424569115798612426749467545080
        ],
        [
            12554869896570109663558999106053541183136083706372178136870048170147558661370,
            21307904757295729894500052152251151076177124351059746872940558537429181679313,
            13447792161027167738515744919555311619301071111923271126707713963292614473975,
            11194665041440536766843756304212299788817698936187605770131686430625103172681,
            7022760843802757109079393624924627417630030139055381384837279305453559861026,
            14368180091281110030022253036601349874026580767275461373222397498585380849175,
            20362090815079102760789516334841889611927869342884580401494938701237909313479,
            11683916255585393494577805363227207275174890005674166623110857790951330330248,
            21680925564107543632769644144771629045807478787600735681275069556336841549441,
            1554686039880869088226596836931999292372497423378849142389700108361111176287,
            9553151402225656007352139561853210183786116738154807824913092141416366824324,
            21774504332021003611111291017295441063483107704370481606906960187337904118400,
            3472743162059388238264946309663113383560193397376658519781344886918012396958,
            21850707327192737842691835772722844106916466129654852946865863108319178245521
        ],
        [
            6841243505372324564043525805425666596605335849634400049689614462868641599622,
            11706947284665470438085734275890584651957983546291282232304205898476084974953,
            8134420958061302592465696766566203845441024351721660066575866529624350946525,
            2674642993002069213220912300725195098434544703961492590713058622848310061455,
            14007544454490183581525584522132854274412440955138184221862170710084681738226,
            9427297140302346741340407818949601657384670126565058224960470754064287232598,
            9424279417196769259939653963004219272435595656090601392111859177294419276463,
            5159704841441138198509282351301933053602549958584575945916187562678590534936,
            5934282708091541939003757621608766449985810436411564642900129758520734711260,
            6572936900512215029112509161886160866328777917297795430264727434969553346474,
            17332317297867087005634642159909283377570778576256008720318658354552654813365,
            20469716791176463599463762213563135543375669917658488173798369718370224346075,
            11895216520141526042182770992519307655836464153974170586288146149131884093776,
            2345310584279491449819095573562431881564998414485162753036518957549727207513
        ],
        [
            16222168105567777760688113388791710300819703656136395550799888633073848798053,
            14347453588631116202352669855016330076170847581618919999243717038742915487177,
            1551977748690015855031859376084014992267998166583511614295554470740621685494,
            5558376366205739247464101507558623934779699722049069497418188353860561540238,
            15084362489402846752495176069529022447007294106313236924068931072406922960482,
            17446301099629553693162731281967866078816607293341610477850995414321505446665,
            15416633712259927998995598381829216728913683600537032862643171407716059372732,
            6910124994917236999728700744617337824847623550680442113266553962793201270115,
            3240338086312503075747637551773566329150860621223080774242357236897458479365,
            9706162939164863315053907226494918827393300584078535638283184502242772542378,
            3821371825593696440611637099905775310839636477646533943959149234595561019388,
            12220054708690507765048929995921680127285008492320123722886943219569231705313,
            16484014909498227505527128570845947338361237083477117662394990633734193572570,
            15639273550026538537711009501005182488432976272250651065072907504931158455474
        ],
        [
            8039261311473792027408130340265108867783988336829815266149766357424909552805,
            13742810756711208866393269789950822956196651488331544225304557369739035583007,
            5732605965679620193714116075516176231919315490749768120227762344555213912038,
            1426283383724925735279168010737048062664480092231550167387716017170422478271,
            7289543915982634578897897440956973302403422297539950338836810160596047457980,
            15177295033774438197517772642364420015492974487860823338193520175227862903717,
            5412509155867259433944542755241941469706034032614068890113478300647952353475,
            16755045912589178729548422106539306191579601567866216267685082373250783779841,
            844425885324371282218176954530597075058496766373014736097970493596574863875,
            12323478340077628423886836431146436403221716179764806398442271274194718652143,
            19468406721151512215981453048984639951787280312568894384216547824763527840472,
            6512636337641737270183934024333064400224464644359645491020358650071524340464,
            8198878215192784492258585011520207242810327647198332623948351347768018051267,
            8014960150646978739731831763393714179490854831922196242908407049327430863238
        ],
        [
            12816421563768297608770270654146762017343826741755988834647936785087288245221,
            4869230832458710492613139050501069397194236257402947715710705773326736170245,
            18301439700961740613282752163964601039402055729651579152511810295028351855917,
            11073344652802336528382437239976464979745376329678013840706100925574578891663,
            9107882721143487446664847981273782313316003453386555221878701631432129058401,
            9441695541513726822451572070540177043748046411169636568582927338148104680158,
            8987068930426301924419900826390508311526176863992306858982473479912439758010,
            1725109031239210601724581840155988791039497876559382612372874257775877974323,
            18516110346729610211387987894593386281257834088357741109524145966500785499183,
            114078214476076549461901405178268623018026929846201249476869510133510589766,
            15915940069177053049090451855582611051242699463952201407239272373068542013292,
            9373936080407194259749015269175580128112032582312467763484971165406599176646,
            4922802633190996456945600288106639549790810185209505074744770090776471062338,
            8883001810279320778962047313612748029483858862205749774979015238684570049088
        ],
        [
            10621957863293158040009666146187340406300006617270113507997717497098731431645,
            11544253490899949675932185200523769178642714850738952025947643180461452257027,
            19367886286197174023585178612664391272570357530876044259219178006444442279835,
            49583159539136224825737189586941489049516773623689603831917260806184061698,
            14718035764669896417897962215694711502145567157050183561348015124983050763912,
            16468329864686708461615593125586840110548434159129257976547738477143616225069,
            19316680422470456517825967239402234468963225932355881906076897312088976727808,
            3793008941035953637072065313624049788550692955904011087840457148221740889857,
            8994123619474927749524041243795236789619386871069943230512200348341409025802,
            2898455184193535874162795400065700362364113037155462125222703939894764399559,
            7006987736985681119096469806956612323700302986805047546691419062106874738669,
            6578526693577992862738197741211972861837397562647850241473856881198749597774,
            18253609658317686864081972526657430282945609846265497350129963610508303097865,
            20602454323920106770928127673050173555696255204782817307960073152139829286712
        ],
        [
            6919690594446594824660388293695365136302375315018989420609208580270256193473,
            20152340858374022568747410447956756883573367358669429548835673215400335225747,
            11674218038035204128186342498577020603218612593894174060137243207689886423596,
            16509772385894559653132866836382733797078280267167499296517180188027714772070,
            18387700354891683161007139598833533459740755646851082725263944626765753998128,
            8496770255291121655312305725645117658510206297162207504909146686627154245846,
            3295351580633631545204707236418977224205703294426182202748223245617942752953,
            11318533876720817956139762907441156918032396007060817178042936071438547629319,
            9798692489110933308397734193670030418121117030189402149994776248649813971130,
            7253879530870754821836349446054636336833607432103959373798000294248292966203,
            21808645514001764351825515375665639285586999794992628373968527911077248645185,
            2859748802987042398453158245958377568437550705999358391809538153774651114865,
            4373537692781319117201803895634857716202697229097770645380222493663057011429,
            21723556418902236605356947828522543021755681613733490227407492902239152334538
        ],
        [
            3246325158773052647788911340476235648870186305670446321333841273770228016262,
            21672319732433045166991956534762990382763080837755725716637027617201056105221,
            1097625536358560225015844871776096852794298581720514105921271391131873344240,
            5332470123606111842725808071294486759248878958039162159296029608796276205941,
            4147129560663007063799754603731275683761368247704376766576071776957227165800,
            7032402220603422034618210155106646820962552774510253688945919060625670415308,
            5241022678363371404039324538224070321660623527603509392150146296843642044363,
            5281273397025328620822441453790518717375265972202147684745427714882287252791,
            8109626675067152219533782552336308649905522111608563670382254454484448073029,
            4696661232179595878220108186097206302552300846640109174608389689072223809776,
            13974026846148052806722306435446895222317781098029808723550029071117080027133,
            14451415757463182353662034231421738047130904367363697865823311429455557043904,
            9490728148230530026163178051838213576627639298618884515939110001242292217290,
            227687333556127166330064214209948378192130717415165040791158610964406937909
        ]
    ];

    // Memory data
    uint16 constant pVk = 0;
    uint16 constant pPairing = 128;

    uint16 constant pLastMem = 896;

    function verifyProof(
        uint[2] calldata _pA,
        uint[2][2] calldata _pB,
        uint[2] calldata _pC,
        uint[4] calldata _pubSignals,
        uint merkleTreeDepth
    ) external view returns (bool) {
        uint[14] memory _vkPoints = VK_POINTS[merkleTreeDepth - 1];

        assembly {
            function checkField(v) {
                if iszero(lt(v, q)) {
                    mstore(0, 0)
                    return(0, 0x20)
                }
            }

            // G1 function to multiply a G1 value(x,y) to value in an address
            function g1_mulAccC(pR, x, y, s) {
                let success
                let mIn := mload(0x40)
                mstore(mIn, x)
                mstore(add(mIn, 32), y)
                mstore(add(mIn, 64), s)

                success := staticcall(sub(gas(), 2000), 7, mIn, 96, mIn, 64)

                if iszero(success) {
                    mstore(0, 0)
                    return(0, 0x20)
                }

                mstore(add(mIn, 64), mload(pR))
                mstore(add(mIn, 96), mload(add(pR, 32)))

                success := staticcall(sub(gas(), 2000), 6, mIn, 128, pR, 64)

                if iszero(success) {
                    mstore(0, 0)
                    return(0, 0x20)
                }
            }

            function checkPairing(pA, pB, pC, pubSignals, pMem, vkPoints) -> isOk {
                let _pPairing := add(pMem, pPairing)
                let _pVk := add(pMem, pVk)

                mstore(_pVk, mload(add(vkPoints, 128)))
                mstore(add(_pVk, 32), mload(add(vkPoints, 160)))

                // Compute the linear combination vk_x

                g1_mulAccC(_pVk, mload(add(vkPoints, 192)), mload(add(vkPoints, 224)), calldataload(add(pubSignals, 0)))

                g1_mulAccC(
                    _pVk,
                    mload(add(vkPoints, 256)),
                    mload(add(vkPoints, 288)),
                    calldataload(add(pubSignals, 32))
                )

                g1_mulAccC(
                    _pVk,
                    mload(add(vkPoints, 320)),
                    mload(add(vkPoints, 352)),
                    calldataload(add(pubSignals, 64))
                )

                g1_mulAccC(
                    _pVk,
                    mload(add(vkPoints, 384)),
                    mload(add(vkPoints, 416)),
                    calldataload(add(pubSignals, 96))
                )

                // -A
                mstore(_pPairing, calldataload(pA))
                mstore(add(_pPairing, 32), mod(sub(q, calldataload(add(pA, 32))), q))

                // B
                mstore(add(_pPairing, 64), calldataload(pB))
                mstore(add(_pPairing, 96), calldataload(add(pB, 32)))
                mstore(add(_pPairing, 128), calldataload(add(pB, 64)))
                mstore(add(_pPairing, 160), calldataload(add(pB, 96)))

                // alpha1
                mstore(add(_pPairing, 192), alphax)
                mstore(add(_pPairing, 224), alphay)

                // beta2
                mstore(add(_pPairing, 256), betax1)
                mstore(add(_pPairing, 288), betax2)
                mstore(add(_pPairing, 320), betay1)
                mstore(add(_pPairing, 352), betay2)

                // vk_x
                mstore(add(_pPairing, 384), mload(add(pMem, pVk)))
                mstore(add(_pPairing, 416), mload(add(pMem, add(pVk, 32))))

                // gamma2
                mstore(add(_pPairing, 448), gammax1)
                mstore(add(_pPairing, 480), gammax2)
                mstore(add(_pPairing, 512), gammay1)
                mstore(add(_pPairing, 544), gammay2)

                // C
                mstore(add(_pPairing, 576), calldataload(pC))
                mstore(add(_pPairing, 608), calldataload(add(pC, 32)))

                // delta2
                mstore(add(_pPairing, 640), mload(vkPoints))
                mstore(add(_pPairing, 672), mload(add(vkPoints, 32)))
                mstore(add(_pPairing, 704), mload(add(vkPoints, 64)))
                mstore(add(_pPairing, 736), mload(add(vkPoints, 96)))

                let success := staticcall(sub(gas(), 2000), 8, _pPairing, 768, _pPairing, 0x20)

                isOk := and(success, mload(_pPairing))
            }

            let pMem := mload(0x40)
            mstore(0x40, add(pMem, pLastMem))

            // Validate that all evaluations ∈ F

            checkField(calldataload(add(_pubSignals, 0)))

            checkField(calldataload(add(_pubSignals, 32)))

            checkField(calldataload(add(_pubSignals, 64)))

            checkField(calldataload(add(_pubSignals, 96)))

            checkField(calldataload(add(_pubSignals, 128)))

            // Validate all evaluations
            let isValid := checkPairing(_pA, _pB, _pC, _pubSignals, pMem, _vkPoints)

            mstore(0, isValid)
            return(0, 0x20)
        }
    }
}