@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Composite - Certificado com Produto'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_DLRAP_CERTIFPRODUCT_180
  as select from zi_dlrap_certif_180
  composition [1..*] of ZI_DLRAP_CERTIFSTPRODUCT_180 as _Stats
  association [1..1] to zi_dlrap_product_180 as _Prod on  $projection.Matnr = _Prod.Matnr
                                                      and _Prod.Language    = $session.system_language
{
  key CertUuid,
      Matnr,
      _Prod.Description as Description,
      Version,
      CertStatus,
      CertCe,
      CertGs,
      CertFcc,
      CertIso,
      CertTuev,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      _Prod,
      _Stats
}
