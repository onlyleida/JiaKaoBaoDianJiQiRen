.class public Lcom/mobile/auth/gatewayauth/utils/security/CheckRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "CheckRoot"

    sput-object v0, Lcom/mobile/auth/gatewayauth/utils/security/CheckRoot;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synchronized native checkAccessRootData()Z
.end method

.method private static synchronized native checkBusybox()Z
.end method

.method private static native checkDeviceDebuggable()Z
.end method

.method private static synchronized native checkGetRootAuth()Z
.end method

.method private static native checkRootPathSU()Z
.end method

.method private static native checkRootWhichSU()Z
.end method

.method private static native checkSuperuserApk()Z
.end method

.method private static native executeCommand([Ljava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public static native isDeviceRooted()Ljava/lang/String;
.end method

.method private static native readFile(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native writeFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
.end method
