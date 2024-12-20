@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Certificados Status'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_DLRAP_CERTIFSTPRODUCT_180
  as projection on ZI_DLRAP_CERTIFSTPRODUCT_180
{
  key StateUuid,
      CertUuid,
      Matnr,
      Description,
      Version,
      Status,
      StatusOld,
      LastChangedBy,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _Certif : redirected to parent ZC_DLRAP_CERTIFPRODUCT_180
}
