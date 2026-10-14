.class public Lcom/noober/background/BackgroundFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field private static final mConstructorArgs:[Ljava/lang/Object;

.field private static final methodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConstructorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mViewCreateFactory:Landroid/view/LayoutInflater$Factory;

.field private mViewCreateFactory2:Landroid/view/LayoutInflater$Factory2;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 1
    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/util/AttributeSet;

    aput-object v3, v1, v2

    sput-object v1, Lcom/noober/background/BackgroundFactory;->sConstructorSignature:[Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    sput-object v0, Lcom/noober/background/BackgroundFactory;->mConstructorArgs:[Ljava/lang/Object;

    .line 3
    new-instance v0, Landroidx/collection/a;

    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    sput-object v0, Lcom/noober/background/BackgroundFactory;->sConstructorMap:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/noober/background/BackgroundFactory;->methodMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/InflateException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/noober/background/BackgroundFactory;->sConstructorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class p2, Landroid/view/View;

    .line 3
    invoke-virtual {p0, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 4
    sget-object p2, Lcom/noober/background/BackgroundFactory;->sConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 5
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p0, 0x1

    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 7
    sget-object p0, Lcom/noober/background/BackgroundFactory;->mConstructorArgs:[Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 8
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot create \u3010"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u3011 : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackgroundLibrary"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "view"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "class"

    .line 3
    invoke-interface {p2, v1, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 4
    :try_start_0
    sget-object v3, Lcom/noober/background/BackgroundFactory;->mConstructorArgs:[Ljava/lang/Object;

    aput-object p0, v3, v2

    .line 5
    aput-object p2, v3, v0

    const/4 p2, -0x1

    const/16 v4, 0x2e

    .line 6
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne p2, v4, :cond_5

    const-string p2, "View"

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "android.view."

    .line 8
    invoke-static {p0, p1, p2}, Lcom/noober/background/BackgroundFactory;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_3

    const-string p2, "android.widget."

    .line 9
    invoke-static {p0, p1, p2}, Lcom/noober/background/BackgroundFactory;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    :cond_3
    if-nez p2, :cond_4

    const-string p2, "android.webkit."

    .line 10
    invoke-static {p0, p1, p2}, Lcom/noober/background/BackgroundFactory;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_4
    aput-object v1, v3, v2

    .line 12
    aput-object v1, v3, v0

    return-object p2

    .line 13
    :cond_5
    :try_start_1
    invoke-static {p0, p1, v1}, Lcom/noober/background/BackgroundFactory;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    aput-object v1, v3, v2

    .line 15
    aput-object v1, v3, v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string p0, "BackgroundLibrary"

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot create \u3010"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u3011 : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    sget-object p0, Lcom/noober/background/BackgroundFactory;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p0, v2

    .line 18
    aput-object v1, p0, v0

    return-object v1

    .line 19
    :goto_1
    sget-object p1, Lcom/noober/background/BackgroundFactory;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p1, v2

    .line 20
    aput-object v1, p1, v0

    .line 21
    throw p0
.end method

.method private static findDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 1
    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/noober/background/BackgroundFactory;->findDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1
.end method

.method private static findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 1
    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    invoke-static {p0, p1}, Lcom/noober/background/BackgroundFactory;->findDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3

    .line 1
    sget-object v0, Lcom/noober/background/BackgroundFactory;->methodMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 5
    invoke-static {p0, p1}, Lcom/noober/background/BackgroundFactory;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private static hasStatus(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static setBackground(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;)V
    .locals 13

    .line 1
    sget v0, Lcom/noober/background/R$styleable;->background_bl_stroke_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/16 v2, 0x10

    if-eqz v1, :cond_4

    sget v1, Lcom/noober/background/R$styleable;->background_bl_stroke_position:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 2
    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    const/4 v6, 0x0

    .line 3
    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 4
    invoke-static {p2, v3}, Lcom/noober/background/BackgroundFactory;->hasStatus(II)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    neg-float v1, v0

    .line 5
    :goto_0
    invoke-static {p2, v4}, Lcom/noober/background/BackgroundFactory;->hasStatus(II)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    neg-float v3, v0

    .line 6
    :goto_1
    invoke-static {p2, v5}, Lcom/noober/background/BackgroundFactory;->hasStatus(II)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    neg-float v4, v0

    .line 7
    :goto_2
    invoke-static {p2, v2}, Lcom/noober/background/BackgroundFactory;->hasStatus(II)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    neg-float v0, v0

    .line 8
    :goto_3
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object p0, v5, v6

    invoke-direct {p2, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v8, 0x0

    float-to-int v9, v1

    float-to-int v10, v3

    float-to-int v11, v4

    float-to-int v12, v0

    move-object v7, p2

    .line 9
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    move-object p0, p2

    .line 10
    :cond_4
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v2, :cond_5

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 12
    :cond_5
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    return-void
.end method

.method private static setDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 2
    sget v0, Lcom/noober/background/R$styleable;->bl_other_bl_position:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    invoke-virtual {p0, p3, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    invoke-virtual {p0, p3, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v3, p0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    invoke-virtual {p0, p3, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v3, v3, p0, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_5

    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    invoke-virtual {p0, p3, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 14
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v3, v3, v3, p0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {p0, p1, p3}, Lcom/noober/background/BackgroundFactory;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;)V

    goto :goto_0

    .line 16
    :cond_4
    invoke-static {p0, p1, p3}, Lcom/noober/background/BackgroundFactory;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static setViewBackground(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1, p2}, Lcom/noober/background/BackgroundFactory;->setViewBackground(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static setViewBackground(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 2
    sget-object v2, Lcom/noober/background/R$styleable;->background:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/noober/background/R$styleable;->background_press:[I

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 4
    sget-object v4, Lcom/noober/background/R$styleable;->background_selector:[I

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 5
    sget-object v5, Lcom/noober/background/R$styleable;->text_selector:[I

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 6
    sget-object v6, Lcom/noober/background/R$styleable;->background_button_drawable:[I

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 7
    sget-object v7, Lcom/noober/background/R$styleable;->bl_other:[I

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 8
    sget-object v8, Lcom/noober/background/R$styleable;->bl_anim:[I

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 9
    sget-object v9, Lcom/noober/background/R$styleable;->background_multi_selector:[I

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 10
    sget-object v10, Lcom/noober/background/R$styleable;->background_multi_selector_text:[I

    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 11
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    const/4 v13, 0x0

    if-ge v11, v12, :cond_0

    .line 12
    sget-object v14, Lcom/noober/background/R$styleable;->background_selector_pre_21:[I

    invoke-virtual {v0, v1, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    goto :goto_0

    :cond_0
    move-object v14, v13

    .line 13
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    if-nez v15, :cond_2

    .line 14
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    if-nez v15, :cond_2

    .line 15
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v15, :cond_2

    .line 16
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v14, :cond_1

    .line 25
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-object p3

    :cond_2
    if-nez p3, :cond_3

    move-object/from16 v15, p0

    .line 26
    :try_start_1
    invoke-static {v0, v15, v1}, Lcom/noober/background/BackgroundFactory;->createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    move-object/from16 v1, p3

    :goto_1
    if-nez v1, :cond_5

    .line 27
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v14, :cond_4

    .line 36
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    return-object v13

    .line 37
    :cond_5
    :try_start_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    if-lez v15, :cond_7

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    if-gtz v15, :cond_6

    goto :goto_2

    .line 38
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v11, "Background_selector and background_multi_selector cannot be used simultaneously"

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_7
    :goto_2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    if-lez v15, :cond_9

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    if-gtz v15, :cond_8

    goto :goto_3

    .line 40
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v11, "text_selector and background_multi_selector_text cannot be used simultaneously"

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_9
    :goto_3
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    const/4 v12, 0x1

    if-lez v15, :cond_a

    instance-of v15, v1, Landroid/widget/CompoundButton;

    if-eqz v15, :cond_a

    .line 42
    invoke-virtual {v1, v12}, Landroid/view/View;->setClickable(Z)V

    .line 43
    move-object v15, v1

    check-cast v15, Landroid/widget/CompoundButton;

    invoke-static {v2, v6}, Lcom/noober/background/drawable/DrawableFactory;->getButtonDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v13

    invoke-virtual {v15, v13}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 44
    :cond_a
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    if-lez v13, :cond_b

    .line 45
    invoke-static {v2, v4}, Lcom/noober/background/drawable/DrawableFactory;->getSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v13

    .line 46
    invoke-virtual {v1, v12}, Landroid/view/View;->setClickable(Z)V

    .line 47
    invoke-static {v13, v1, v7, v2}, Lcom/noober/background/BackgroundFactory;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    :goto_4
    const/4 v12, 0x0

    goto :goto_7

    .line 48
    :cond_b
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    if-lez v13, :cond_c

    .line 49
    invoke-static {v2}, Lcom/noober/background/drawable/DrawableFactory;->getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v13

    .line 50
    invoke-static {v13, v2, v3}, Lcom/noober/background/drawable/DrawableFactory;->getPressDrawable(Landroid/graphics/drawable/GradientDrawable;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v15

    .line 51
    invoke-virtual {v1, v12}, Landroid/view/View;->setClickable(Z)V

    .line 52
    invoke-static {v15, v1, v7, v2}, Lcom/noober/background/BackgroundFactory;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    move-object v12, v13

    move-object v13, v15

    goto :goto_7

    .line 53
    :cond_c
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    if-lez v13, :cond_d

    .line 54
    invoke-static {v0, v9, v2}, Lcom/noober/background/drawable/DrawableFactory;->getMultiSelectorDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v13

    .line 55
    invoke-static {v13, v1, v2}, Lcom/noober/background/BackgroundFactory;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;)V

    goto :goto_4

    .line 56
    :cond_d
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    if-lez v13, :cond_f

    if-eqz v14, :cond_e

    .line 57
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    if-lez v13, :cond_e

    .line 58
    invoke-static {v2}, Lcom/noober/background/drawable/DrawableFactory;->getSelectorPre21Drawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v13

    .line 59
    invoke-static {v13, v1, v7, v2}, Lcom/noober/background/BackgroundFactory;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    goto :goto_4

    .line 60
    :cond_e
    invoke-static {v2}, Lcom/noober/background/drawable/DrawableFactory;->getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v13

    .line 61
    invoke-static {v13, v1, v7, v2}, Lcom/noober/background/BackgroundFactory;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    move-object v12, v13

    goto :goto_6

    .line 62
    :cond_f
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    if-lez v13, :cond_10

    .line 63
    invoke-static {v8}, Lcom/noober/background/drawable/DrawableFactory;->getAnimationDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v13

    .line 64
    invoke-static {v13, v1, v2}, Lcom/noober/background/BackgroundFactory;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;)V

    .line 65
    sget v15, Lcom/noober/background/R$styleable;->bl_anim_bl_anim_auto_start:I

    const/4 v12, 0x0

    invoke-virtual {v8, v15, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 66
    invoke-virtual {v13}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_10
    :goto_5
    const/4 v12, 0x0

    :goto_6
    const/4 v13, 0x0

    .line 67
    :goto_7
    instance-of v15, v1, Landroid/widget/TextView;

    if-eqz v15, :cond_11

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    if-lez v15, :cond_11

    .line 68
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v5}, Lcom/noober/background/drawable/DrawableFactory;->getTextSelectorColor(Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_8

    .line 69
    :cond_11
    instance-of v15, v1, Landroid/widget/TextView;

    if-eqz v15, :cond_12

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    if-lez v15, :cond_12

    .line 70
    move-object v15, v1

    check-cast v15, Landroid/widget/TextView;

    invoke-static {v0, v10}, Lcom/noober/background/drawable/DrawableFactory;->getMultiTextColorSelectorColorCreator(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 71
    :cond_12
    :goto_8
    sget v0, Lcom/noober/background/R$styleable;->background_bl_ripple_enable:I

    const/4 v15, 0x0

    invoke-virtual {v2, v0, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_15

    sget v0, Lcom/noober/background/R$styleable;->background_bl_ripple_color:I

    .line 72
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v16

    if-eqz v16, :cond_15

    .line 73
    invoke-virtual {v2, v0, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    const/16 v15, 0x15

    if-lt v11, v15, :cond_14

    if-nez v13, :cond_13

    move-object v13, v12

    .line 74
    :cond_13
    new-instance v11, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-direct {v11, v0, v13, v13}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 75
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 76
    invoke-static {v11, v1, v2}, Lcom/noober/background/BackgroundFactory;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;)V

    goto :goto_9

    :cond_14
    if-nez v13, :cond_15

    .line 77
    new-instance v11, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 78
    invoke-static {v2}, Lcom/noober/background/drawable/DrawableFactory;->getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v13

    .line 79
    invoke-virtual {v13, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v0, 0x1

    new-array v15, v0, [I

    const v16, -0x10100a7

    const/16 v17, 0x0

    aput v16, v15, v17

    .line 80
    invoke-virtual {v11, v15, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v12, v0, [I

    const v15, 0x10100a7

    aput v15, v12, v17

    .line 81
    invoke-virtual {v11, v12, v13}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 83
    invoke-static {v11, v1, v7, v2}, Lcom/noober/background/BackgroundFactory;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 84
    :cond_15
    :goto_9
    sget v0, Lcom/noober/background/R$styleable;->bl_other_bl_function:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 85
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_16

    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 88
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 89
    invoke-static {v12, v0}, Lcom/noober/background/BackgroundFactory;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 90
    new-instance v12, Lcom/noober/background/BackgroundFactory$a;

    invoke-direct {v12, v0, v11}, Lcom/noober/background/BackgroundFactory$a;-><init>(Ljava/lang/reflect/Method;Landroid/content/Context;)V

    invoke-virtual {v1, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    :cond_16
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v14, :cond_17

    .line 100
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    :cond_17
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v1, p3

    .line 101
    :goto_a
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v14, :cond_18

    .line 111
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    :cond_18
    return-object v1

    .line 112
    :goto_b
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v14, :cond_19

    .line 121
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    :cond_19
    throw v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 8
    invoke-virtual {p0, p2, p3, p4}, Lcom/noober/background/BackgroundFactory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    const-string v0, "com.noober.background.view"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noober/background/BackgroundFactory;->mViewCreateFactory2:Landroid/view/LayoutInflater$Factory2;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/noober/background/BackgroundFactory;->mViewCreateFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/noober/background/BackgroundFactory;->mViewCreateFactory:Landroid/view/LayoutInflater$Factory;

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 7
    :cond_3
    :goto_0
    invoke-static {p1, p2, p3, v1}, Lcom/noober/background/BackgroundFactory;->setViewBackground(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setInterceptFactory(Landroid/view/LayoutInflater$Factory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noober/background/BackgroundFactory;->mViewCreateFactory:Landroid/view/LayoutInflater$Factory;

    return-void
.end method

.method public setInterceptFactory2(Landroid/view/LayoutInflater$Factory2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noober/background/BackgroundFactory;->mViewCreateFactory2:Landroid/view/LayoutInflater$Factory2;

    return-void
.end method
