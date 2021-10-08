public class TestUtility {
    
    public static Map<String, Object> getAssetInfos(String billingFrequency){
        Map<String, Object> asset = new Map<String, Object>();
        asset.put('BillingAccountId','a0W7Z00000FgdRqUAJ');
        asset.put('AutomaticPaymentAmount',0);
        asset.put('Id','02i7Z00000BrcUyQAJ');
        asset.put('BillingFrequency',billingFrequency);
        asset.put('EffectiveDate', date.parse('10/05/2021'));
        asset.put('ExpirationDate',date.parse('31/12/2021'));
        asset.put('MonthlyPremium',26.99);
        asset.put('StandardPremium',323.88);
        asset.put('TotalPremiumForTerm',314.55);
        return asset;
    }

    public static Map<String, Object> getBeneficiareAD(){
        Map<String, Object> beneficiareAD = new Map<String, Object>();
        beneficiareAD.put('beAayantDroit','0037Z000019rZ3BQAU');
        beneficiareAD.put('Id',null);
        beneficiareAD.put('beTypedebeneficiaire','Bénéficiaire capital obsèques');
        beneficiareAD.put('beCivility','Mr.');
        beneficiareAD.put('beFirstName', 'tttttt');
        beneficiareAD.put('beLastName','tttttt');
        beneficiareAD.put('beInstanceKey','ttttt tttttt (Ayant Droit)');
        beneficiareAD.put('beBirthdate','2008-06-04');
        beneficiareAD.put('beAge',13);
        beneficiareAD.put('bePourcentageRepartition',30);
        return beneficiareAD;
    }

    public static Map<String, Object> getBeneficiareNew(){
        Map<String, Object> beneficiareNew = new Map<String, Object>();
        beneficiareNew.put('nbeAccount','0037Z000019rZ3BQAU');
        beneficiareNew.put('IdBenif',null);
        beneficiareNew.put('nbTypedebeneficiaire','Bénéficiaire capital obsèques');
        beneficiareNew.put('Civilite','Mr.');
        beneficiareNew.put('nbeLastName', 'tttttt');
        beneficiareNew.put('nbeFirstName','tttttt');
        beneficiareNew.put('nbeInstanceKey','ttttt tttttt (Ayant Droit)');
        beneficiareNew.put('nbeBirthdate','2008-06-04');
        beneficiareNew.put('nbeAge',13);
        beneficiareNew.put('Lieudenaissance',30);
        beneficiareNew.put('nbePourcentageRepartition',30);

        Map<String, Object> adresse = new Map<String, Object>();
        adresse.put('nbeAdresse','41 Allée du Parc de Choisy, 75013 Paris, France');
        
        beneficiareNew.put('nbeAdresse-Block',adresse);

        return beneficiareNew;
    }
    
    public static Map<String, Object> getVLOCITYFORMULALIST(){
        Map<String, Object> beneficiareNew = new Map<String, Object>();

        List<Object> list1 = new List<Object>();
        list1.add(TestUtility.getBeneficiareNew());
        
        beneficiareNew.put('VLOCITY-FORMULA-LIST',list1);
     
        return beneficiareNew;
    }

}