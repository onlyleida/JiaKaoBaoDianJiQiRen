.class public Lcn/mucang/android/jiakaoyi/signal/ai/AIModuleResult;
.super Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;
.source "SourceFile"


# instance fields
.field public final module:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;-><init>()V

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIModuleResult;->module:I

    return-void
.end method


# virtual methods
.method public desc()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIModuleResult;->module:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "\u65e0\u52a8\u4f5c"

    return-object v0

    :pswitch_0
    const-string v0, "\u94a5\u5319\u5f00\u5173"

    return-object v0

    :pswitch_1
    const-string v0, "\u96e8\u5237\u62e8\u6746"

    return-object v0

    :pswitch_2
    const-string v0, "\u706f\u5149\u62e8\u6746"

    return-object v0

    :pswitch_3
    const-string v0, "\u4e2d\u63a7\u5c4f"

    return-object v0

    :pswitch_4
    const-string v0, "\u4eea\u8868\u76d8"

    return-object v0

    :pswitch_5
    const-string v0, "\u5de6\u540e\u89c6\u955c"

    return-object v0

    :pswitch_6
    const-string v0, "\u6863\u6746"

    return-object v0

    :pswitch_7
    const-string v0, "\u65b9\u5411\u76d8"

    return-object v0

    :pswitch_8
    const-string v0, "\u5176\u4ed6"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
