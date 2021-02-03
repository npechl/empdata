#' Sample metadata table
#'
#' This is a meta-data/mapping file containing related information about samples originated from the Earth Microbiome Project.
#'
#' @source <https://earthmicrobiome.org/>
#' @format Data frame with columns
#' \describe{
#' \item{#SampleID}{unique sample identifier (leading hashtag is required by Qiime)}                         
#' \item{BarcodeSequence}{barcode sequence}                   
#' \item{LinkerPrimerSequence}{linker primer sequence}              
#' \item{Description}{sample description}                       
#' \item{host_subject_id}{unique host or subject (can have multiple samples per host_subject_id)}                   
#' \item{study_id}{study identifier}                          
#' \item{title}{study title}                             
#' \item{principal_investigator}{PI of the study}            
#' \item{doi}{Digital Object Identifier (DOI) or PubMed ID of primary publication}                               
#' \item{ebi_accession}{European Bioinformatics Institute (EBI) European Nucleotide Archive (ENA) accession number if submitted}                     
#' \item{target_gene}{name of gene amplified (e.g., 16S rRNA)}                       
#' \item{target_subfragment}{name of subfragment of gene amplified (e.g., V4)}                
#' \item{pcr_primers}{amplicon primer sequences used}                       
#' \item{illumina_technology}{model of Illumina sequencer}               
#' \item{extraction_center}{where the sample was physically extracted }                 
#' \item{run_center}{where the sample was physically sequenced (CCME=U Colorado Boulder, ANL=Argonne Natl Lab, UCSDMI=UC San Diego, CGS-GL=Wash U, UCD=U Colorado Denver)}                        
#' \item{run_date}{date the sample was physically sequenced}                          
#' \item{read_length_bp}{median read length in bp across study after quality filtering}                    
#' \item{sequences_split_libraries}{number of sequences after demultiplexing with split_libraries_fastq.py}         
#' \item{observations_closed_ref_greengenes}{number of observations in closed-reference Greengenes table}
#' \item{observations_closed_ref_silva}{number of observations in closed-reference Silva table}     
#' \item{observations_open_ref_greengenes}{number of observations in open-reference Greengenes table}  
#' \item{observations_deblur_90bp}{number of observations in 90-bp Deblur table}          
#' \item{observations_deblur_100bp}{number of observations in 100-bp Deblur table}         
#' \item{observations_deblur_150bp}{number of observations in 150-bp Deblur table}         
#' \item{emp_release1}{samples with >=1 sequences (split libraries) per sample}                      
#' \item{qc_filtered}{samples with >=1000 observations in CR-GG & CR-Silva & OR-GG & Deblur-90 but excluding controls (all subsets are in this set)}                       
#' \item{subset_10k}{10000 samples with >=10000 CR-GG & CR-Silva & OR-GG and >=5000 Deblur-90, randomly selected and evenly distributed across `empo_3` categories and then across studies}                        
#' \item{subset_5k}{5000 samples with >=10000 CR-GG & CR-Silva & OR-GG and >=5000 Deblur-90, randomly selected and evenly distributed across `empo_3` categories and then across studies}                         
#' \item{subset_2k}{2000 samples with >=10000 CR-GG & CR-Silva & OR-GG and >=5000 Deblur-90, randomly selected and evenly distributed across `empo_3` categories and then across studies}                         
#' \item{sample_taxid}{sample NCBI taxonomy ID}                      
#' \item{sample_scientific_name}{sample NCBI scientific name looked up from taxonomy ID}            
#' \item{host_taxid}{host NCBI taxonomy ID}                        
#' \item{host_common_name_provided}{host common name provided in the original mapping file}         
#' \item{host_common_name}{host NCBI common name looked up from taxonomy ID}                  
#' \item{host_scientific_name}{host NCBI scientific name looked up from taxonomy ID}              
#' \item{host_superkingdom}{host superkingdom looked up from taxonomy ID}                 
#' \item{host_kingdom}{host kingdom looked up from taxonomy ID}                      
#' \item{host_phylum}{host phylum looked up from taxonomy ID}                       
#' \item{host_class}{host class looked up from taxonomy ID}                        
#' \item{host_order}{host order looked up from taxonomy ID}                        
#' \item{host_family}{host family looked up from taxonomy ID}                       
#' \item{host_genus}{host genus looked up from taxonomy ID}                        
#' \item{host_species}{host species looked up from taxonomy ID}                      
#' \item{collection_timestamp}{date and time when sample was collected}              
#' \item{country}{country where sample was collected}                           
#' \item{latitude_deg}{latitude in degrees}                      
#' \item{longitude_deg}{longitude in degrees}                     
#' \item{depth_m}{depth in meters of sample below surface (earth surface if soil, sea/lake bottom if sediment, lake surface if lake, sea level if marine)}                           
#' \item{altitude_m}{height above surface, usually zero unless the mouse is levitating (either depth or altitude can have a non-zero value but not both)}                        
#' \item{elevation_m}{height above sea level in meters (from georeferencing tool)}                       
#' \item{env_biome}{ENVO biome}                         
#' \item{env_feature}{ENVO feature}                       
#' \item{env_material}{ENVO material}                      
#' \item{envo_biome_0}{level 0 ENVO biome looked up from given ENVO biome}                      
#' \item{envo_biome_1}{level 1 ENVO biome looked up from given ENVO biome}                      
#' \item{envo_biome_2}{level 2 ENVO biome looked up from given ENVO biome}                      
#' \item{envo_biome_3}{level 3 ENVO biome looked up from given ENVO biome}                      
#' \item{envo_biome_4}{level 4 ENVO biome looked up from given ENVO biome}                      
#' \item{envo_biome_5}{level 5 ENVO biome looked up from given ENVO biome}                      
#' \item{empo_0}{level 0 EMPO habitat from EMPO ontology}                            
#' \item{empo_1}{level 1 EMPO habitat from EMPO ontology}                            
#' \item{empo_2}{level 2 EMPO habitat from EMPO ontology}                            
#' \item{empo_3}{level 3 EMPO habitat from EMPO ontology}                            
#' \item{adiv_observed_otus}{observed tag sequences of 90-bp Deblur table rarefied to 5000 sequences per sample}                
#' \item{adiv_chao1}{Chao1 index of 90-bp Deblur table rarefied to 5000 sequences per sample}                        
#' \item{adiv_shannon}{Shannon index of 90-bp Deblur table rarefied to 5000 sequences per sample}                      
#' \item{adiv_faith_pd}{Faith's phylogenetic diversity of 90-bp Deblur table rarefied to 5000 sequences per sample}                     
#' \item{temperature_deg_c}{ambient temperature in degrees Celcius}                 
#' \item{ph}{pH value}                                
#' \item{salinity_psu}{salinity in practical salinity units (PSU)}                      
#' \item{oxygen_mg_per_l}{oxygen concentration in mg/L}                   
#' \item{phosphate_umol_per_l}{phosphate concentration in µmol/L}              
#' \item{ammonium_umol_per_l}{ammonium concentration in µmol/L}               
#' \item{nitrate_umol_per_l}{nitrate concentration in µmol/L}                
#' \item{sulfate_umol_per_l}{sulfate concentration in µmol/L}   
#' }
#' @examples
#'   head(sample_metadata)
"sample_metadata"
