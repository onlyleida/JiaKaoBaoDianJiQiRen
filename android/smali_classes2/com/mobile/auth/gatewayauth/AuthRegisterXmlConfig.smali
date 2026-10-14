.class public Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private layoutResId:I

.field private viewDelegate:Lcom/mobile/auth/gatewayauth/ui/AbstractPnsViewDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig$1;

    invoke-direct {v0}, Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig$1;-><init>()V

    sput-object v0, Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig;->layoutResId:I

    return-void
.end method

.method private constructor <init>(Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig$Builder;->access$000(Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig;->layoutResId:I

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig$Builder;->access$100(Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig$Builder;)Lcom/mobile/auth/gatewayauth/ui/AbstractPnsViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig;->viewDelegate:Lcom/mobile/auth/gatewayauth/ui/AbstractPnsViewDelegate;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig$Builder;Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig;-><init>(Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutResId()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig;->layoutResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getViewDelegate()Lcom/mobile/auth/gatewayauth/ui/AbstractPnsViewDelegate;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig;->viewDelegate:Lcom/mobile/auth/gatewayauth/ui/AbstractPnsViewDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    :try_start_0
    iget p2, p0, Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig;->layoutResId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
