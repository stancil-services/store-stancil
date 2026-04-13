export type Language = 'en' | 'es';

export const LANG_KEY = 'stancil-lang';
export const LANG_EVENT = 'lang-changed';

type SectionDict = Record<string, Record<string, string>>;

const dict: Record<Language, SectionDict> = {
  en: {
    common: {
      orderPrefix: 'Order',
    },
    layout: {
      navShop: 'Shop',
      navMyOrders: 'My Orders',
      navProfile: 'Profile',
      navAdminOrders: 'Orders',
      navAdminUsers: 'Users',
      signOut: 'Sign Out',
    },
    shop: {
      heroLabel: 'Stancil Employee Store',
      heading: 'Shop',
      yearlyCredit: 'Yearly Credit',
      description: 'Browse company merchandise and gear. Credit is applied automatically at checkout.',
      all: 'All',
      creditEligibleOnly: 'Credit-eligible only',
      inStock: 'In Stock',
      lowStock: 'Low Stock',
      outOfStock: 'Out of Stock',
      creditEligibleBadge: 'Credit Eligible',
      noProducts: 'No products available right now',
      noProductsDesc: 'Check back soon for new merchandise.',
    },
    myOrders: {
      heading: 'My Orders',
      noOrders: 'No orders yet',
      noOrdersDesc: 'Your order history will appear here once you place your first order.',
      startShopping: 'Start Shopping',
      creditLabel: 'Credit',
      oopLabel: 'OOP',
    },
    orderDetail: {
      breadcrumbHome: 'My Orders',
      orderSummary: 'Order Summary',
      total: 'Total',
      creditApplied: 'Credit applied',
      outOfPocket: 'Out-of-pocket',
      notes: 'Notes',
      employee: 'Employee',
      location: 'Location',
      manager: 'Manager',
      itemsHeading: 'Items',
      product: 'Product',
      sizeColor: 'Size / Color',
      qty: 'Qty',
      price: 'Price',
      status: 'Status',
    },
    profile: {
      heading: 'My Profile',
      creditBalance: 'Credit Balance',
      remaining: 'remaining',
      yearlyCreditPrefix: 'of',
      yearlyCreditSuffix: 'yearly credit',
      used: 'Used',
      available: 'Available',
      profileInfo: 'Profile Information',
      name: 'Name',
      email: 'Email',
      location: 'Location',
      manager: 'Manager',
      profileNotFound: 'Profile not found.',
      contactHR: 'Contact HR if this is an error.',
      recentOrders: 'Recent Orders',
      viewAll: 'View all',
      noOrdersYet: 'No orders yet.',
      browseStore: 'Browse the store',
    },
  },
  es: {
    common: {
      orderPrefix: 'Pedido',
    },
    layout: {
      navShop: 'Tienda',
      navMyOrders: 'Mis Pedidos',
      navProfile: 'Perfil',
      navAdminOrders: 'Pedidos',
      navAdminUsers: 'Usuarios',
      signOut: 'Cerrar Sesión',
    },
    shop: {
      heroLabel: 'Tienda de Empleados Stancil',
      heading: 'Tienda',
      yearlyCredit: 'Crédito Anual',
      description: 'Explora mercancía y equipo de la empresa. El crédito se aplica automáticamente al pagar.',
      all: 'Todos',
      creditEligibleOnly: 'Solo elegibles para crédito',
      inStock: 'En Stock',
      lowStock: 'Stock Bajo',
      outOfStock: 'Agotado',
      creditEligibleBadge: 'Elegible para Crédito',
      noProducts: 'No hay productos disponibles en este momento',
      noProductsDesc: 'Vuelve pronto para ver nueva mercancía.',
    },
    myOrders: {
      heading: 'Mis Pedidos',
      noOrders: 'Aún no hay pedidos',
      noOrdersDesc: 'Tu historial de pedidos aparecerá aquí una vez que realices tu primer pedido.',
      startShopping: 'Comenzar a Comprar',
      creditLabel: 'Crédito',
      oopLabel: 'De tu bolsillo',
    },
    orderDetail: {
      breadcrumbHome: 'Mis Pedidos',
      orderSummary: 'Resumen del Pedido',
      total: 'Total',
      creditApplied: 'Crédito aplicado',
      outOfPocket: 'De tu bolsillo',
      notes: 'Notas',
      employee: 'Empleado',
      location: 'Ubicación',
      manager: 'Gerente',
      itemsHeading: 'Artículos',
      product: 'Producto',
      sizeColor: 'Talla / Color',
      qty: 'Cant.',
      price: 'Precio',
      status: 'Estado',
    },
    profile: {
      heading: 'Mi Perfil',
      creditBalance: 'Saldo de Crédito',
      remaining: 'restante',
      yearlyCreditPrefix: 'de',
      yearlyCreditSuffix: 'de crédito anual',
      used: 'Usado',
      available: 'Disponible',
      profileInfo: 'Información del Perfil',
      name: 'Nombre',
      email: 'Correo',
      location: 'Ubicación',
      manager: 'Gerente',
      profileNotFound: 'Perfil no encontrado.',
      contactHR: 'Contacta a RR.HH. si esto es un error.',
      recentOrders: 'Pedidos Recientes',
      viewAll: 'Ver todos',
      noOrdersYet: 'Aún no hay pedidos.',
      browseStore: 'Explorar la tienda',
    },
  },
};

export function getLang(): Language {
  if (typeof localStorage === 'undefined') return 'en';
  const stored = localStorage.getItem(LANG_KEY);
  return stored === 'es' ? 'es' : 'en';
}

export function setLang(lang: Language): void {
  localStorage.setItem(LANG_KEY, lang);
  window.dispatchEvent(new CustomEvent(LANG_EVENT, { detail: { lang } }));
}

export function t(path: string, lang: Language = getLang()): string {
  const [section, key] = path.split('.');
  return dict[lang]?.[section]?.[key] ?? path;
}

export function applyI18n(lang: Language = getLang(), root: Document | HTMLElement = document): void {
  root.querySelectorAll<HTMLElement>('[data-i18n-key]').forEach((el) => {
    const key = el.dataset.i18nKey;
    if (!key) return;
    const value = t(key, lang);
    if (value && value !== key) el.textContent = value;
  });
}
