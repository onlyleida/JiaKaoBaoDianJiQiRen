.class public Lcom/unity3d/splash/services/c/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Landroid/app/Application;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/unity3d/splash/services/c/b/a;->b:Landroid/app/Application;

    return-object v0
.end method

.method public static b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/unity3d/splash/services/c/b/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unity3d/splash/services/c/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Landroid/app/Application;)V
    .locals 0

    sput-object p0, Lcom/unity3d/splash/services/c/b/a;->b:Landroid/app/Application;

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/unity3d/splash/services/c/b/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/unity3d/splash/services/c/b/a;->c:Ljava/lang/String;

    return-void
.end method
