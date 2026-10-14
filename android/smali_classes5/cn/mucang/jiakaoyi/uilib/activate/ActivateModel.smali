.class public final Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0018\"\u0004\u0008\u001d\u0010\u001aR\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000c\"\u0004\u0008 \u0010\u000eR\u001a\u0010!\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008\u00a8\u0006$"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;",
        "Ljava/io/Serializable;",
        "()V",
        "cooperationMode",
        "",
        "getCooperationMode",
        "()I",
        "setCooperationMode",
        "(I)V",
        "deviceNum",
        "",
        "getDeviceNum",
        "()Ljava/lang/String;",
        "setDeviceNum",
        "(Ljava/lang/String;)V",
        "dialog",
        "Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;",
        "getDialog",
        "()Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;",
        "setDialog",
        "(Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;)V",
        "highPrecision",
        "",
        "getHighPrecision",
        "()Z",
        "setHighPrecision",
        "(Z)V",
        "serviceFeeExpired",
        "getServiceFeeExpired",
        "setServiceFeeExpired",
        "serviceFeeStatusLabel",
        "getServiceFeeStatusLabel",
        "setServiceFeeStatusLabel",
        "status",
        "getStatus",
        "setStatus",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private cooperationMode:I

.field private deviceNum:Ljava/lang/String;

.field private dialog:Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;

.field private highPrecision:Z

.field private serviceFeeExpired:Z

.field private serviceFeeStatusLabel:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->serviceFeeStatusLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCooperationMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->cooperationMode:I

    return v0
.end method

.method public final getDeviceNum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->deviceNum:Ljava/lang/String;

    return-object v0
.end method

.method public final getDialog()Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->dialog:Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;

    return-object v0
.end method

.method public final getHighPrecision()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->highPrecision:Z

    return v0
.end method

.method public final getServiceFeeExpired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->serviceFeeExpired:Z

    return v0
.end method

.method public final getServiceFeeStatusLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->serviceFeeStatusLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->status:I

    return v0
.end method

.method public final setCooperationMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->cooperationMode:I

    return-void
.end method

.method public final setDeviceNum(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->deviceNum:Ljava/lang/String;

    return-void
.end method

.method public final setDialog(Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->dialog:Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;

    return-void
.end method

.method public final setHighPrecision(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->highPrecision:Z

    return-void
.end method

.method public final setServiceFeeExpired(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->serviceFeeExpired:Z

    return-void
.end method

.method public final setServiceFeeStatusLabel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->serviceFeeStatusLabel:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->status:I

    return-void
.end method
