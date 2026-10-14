.class public Lcom/noober/background/BackgroundLibrary;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static forceSetFactory2(Landroid/view/LayoutInflater;)V
    .locals 4

    .line 1
    const-class v0, Landroidx/core/view/LayoutInflaterCompat;

    .line 2
    const-class v1, Landroid/view/LayoutInflater;

    :try_start_0
    const-string v2, "sCheckedField"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    const-string v0, "mFactory"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v3, "mFactory2"

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 10
    new-instance v2, Lcom/noober/background/BackgroundFactory;

    invoke-direct {v2}, Lcom/noober/background/BackgroundFactory;-><init>()V

    .line 11
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/noober/background/BackgroundFactory;->setInterceptFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 14
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/noober/background/BackgroundFactory;->setInterceptFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static inject(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 2

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v1

    if-nez v1, :cond_2

    .line 5
    invoke-static {p0}, Lcom/noober/background/BackgroundLibrary;->setDelegateFactory(Landroid/content/Context;)Lcom/noober/background/BackgroundFactory;

    move-result-object p0

    .line 6
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object p0

    instance-of p0, p0, Lcom/noober/background/BackgroundFactory;

    if-nez p0, :cond_3

    .line 8
    invoke-static {v0}, Lcom/noober/background/BackgroundLibrary;->forceSetFactory2(Landroid/view/LayoutInflater;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static inject2(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/noober/background/BackgroundLibrary;->forceSetFactory2(Landroid/view/LayoutInflater;)V

    return-object p0
.end method

.method private static setDelegateFactory(Landroid/content/Context;)Lcom/noober/background/BackgroundFactory;
    .locals 2

    .line 1
    new-instance v0, Lcom/noober/background/BackgroundFactory;

    invoke-direct {v0}, Lcom/noober/background/BackgroundFactory;-><init>()V

    .line 2
    instance-of v1, p0, Landroidx/appcompat/app/d;

    if-eqz v1, :cond_0

    .line 3
    check-cast p0, Landroidx/appcompat/app/d;

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;

    move-result-object p0

    .line 4
    new-instance v1, Lcom/noober/background/BackgroundLibrary$a;

    invoke-direct {v1, p0}, Lcom/noober/background/BackgroundLibrary$a;-><init>(Landroidx/appcompat/app/f;)V

    invoke-virtual {v0, v1}, Lcom/noober/background/BackgroundFactory;->setInterceptFactory(Landroid/view/LayoutInflater$Factory;)V

    :cond_0
    return-object v0
.end method
