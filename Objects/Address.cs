﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IIS.FlexberryGisTestStand
{
    using System;
    using System.Xml;
    using ICSSoft.STORMNET;
    
    
    // *** Start programmer edit section *** (Using statements)

    // *** End programmer edit section *** (Using statements)


    /// <summary>
    /// Address.
    /// </summary>
    // *** Start programmer edit section *** (Address CustomAttributes)

    // *** End programmer edit section *** (Address CustomAttributes)
    [AutoAltered()]
    [AccessType(ICSSoft.STORMNET.AccessType.none)]
    [View("AddressE", new string[] {
            "Place as \'Place\'",
            "Location as \'Location\'"})]
    [View("AddressL", new string[] {
            "Place as \'Place\'",
            "Location as \'Location\'"})]
    public class Address : ICSSoft.STORMNET.DataObject
    {
        
        private string fPlace;
        
        private System.Windows.Media.Geometry fLocation;
        
        // *** Start programmer edit section *** (Address CustomMembers)

        // *** End programmer edit section *** (Address CustomMembers)

        
        /// <summary>
        /// Place.
        /// </summary>
        // *** Start programmer edit section *** (Address.Place CustomAttributes)

        // *** End programmer edit section *** (Address.Place CustomAttributes)
        [StrLen(255)]
        public virtual string Place
        {
            get
            {
                // *** Start programmer edit section *** (Address.Place Get start)

                // *** End programmer edit section *** (Address.Place Get start)
                string result = this.fPlace;
                // *** Start programmer edit section *** (Address.Place Get end)

                // *** End programmer edit section *** (Address.Place Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (Address.Place Set start)

                // *** End programmer edit section *** (Address.Place Set start)
                this.fPlace = value;
                // *** Start programmer edit section *** (Address.Place Set end)

                // *** End programmer edit section *** (Address.Place Set end)
            }
        }
        
        /// <summary>
        /// Location.
        /// </summary>
        // *** Start programmer edit section *** (Address.Location CustomAttributes)

        // *** End programmer edit section *** (Address.Location CustomAttributes)
        public virtual System.Windows.Media.Geometry Location
        {
            get
            {
                // *** Start programmer edit section *** (Address.Location Get start)

                // *** End programmer edit section *** (Address.Location Get start)
                System.Windows.Media.Geometry result = this.fLocation;
                // *** Start programmer edit section *** (Address.Location Get end)

                // *** End programmer edit section *** (Address.Location Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (Address.Location Set start)

                // *** End programmer edit section *** (Address.Location Set start)
                this.fLocation = value;
                // *** Start programmer edit section *** (Address.Location Set end)

                // *** End programmer edit section *** (Address.Location Set end)
            }
        }
        
        /// <summary>
        /// Class views container.
        /// </summary>
        public class Views
        {
            
            /// <summary>
            /// "AddressE" view.
            /// </summary>
            public static ICSSoft.STORMNET.View AddressE
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("AddressE", typeof(IIS.FlexberryGisTestStand.Address));
                }
            }
            
            /// <summary>
            /// "AddressL" view.
            /// </summary>
            public static ICSSoft.STORMNET.View AddressL
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("AddressL", typeof(IIS.FlexberryGisTestStand.Address));
                }
            }
        }
    }
}
