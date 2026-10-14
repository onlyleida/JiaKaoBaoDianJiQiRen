.class public abstract Lcom/nirvana/tools/core/BaseDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.nirvana.tools.core.BaseDelegate"

.field protected static volatile sComponentClassExist:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/nirvana/tools/core/BaseDelegate;->sComponentClassExist:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    sget-object v1, Lcom/nirvana/tools/core/ComponentSdkCore;->sApplicationContext:Landroid/content/Context;

    if-nez v1, :cond_0

    sget-object v1, Lcom/nirvana/tools/core/BaseDelegate;->TAG:Ljava/lang/String;

    const-string v2, "ComponentSdkCore.sApplicationContext is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v0, Lcom/nirvana/tools/core/BaseDelegate;->sComponentClassExist:Ljava/lang/Boolean;

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nirvana/tools/core/BaseDelegate;->getSubClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Lcom/nirvana/tools/core/BaseDelegate;->sComponentClassExist:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object v1, Lcom/nirvana/tools/core/BaseDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nirvana/tools/core/BaseDelegate;->getSubClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v0, Lcom/nirvana/tools/core/BaseDelegate;->sComponentClassExist:Ljava/lang/Boolean;

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract getSubClassName()Ljava/lang/String;
.end method
