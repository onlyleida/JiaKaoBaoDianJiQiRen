.class public Lcom/mobile/auth/gatewayauth/utils/security/EmulatorDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EmulatorDetector"

.field private static rating:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, -0x1

    sput v0, Lcom/mobile/auth/gatewayauth/utils/security/EmulatorDetector;->rating:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final native getProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native isEmulator(Landroid/content/Context;)Z
.end method

.method private static native isEmulatorAbsoluly(Landroid/content/Context;)Z
.end method

.method private static final native mayOnEmulatorViaQEMU(Landroid/content/Context;)Z
.end method
