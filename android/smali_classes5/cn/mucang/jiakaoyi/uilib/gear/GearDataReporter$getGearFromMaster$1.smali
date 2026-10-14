.class final Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$getGearFromMaster$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->j(Lcn/mucang/jiakaoyi/uilib/gear/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$getGearFromMaster$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$getGearFromMaster$1;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$getGearFromMaster$1;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$getGearFromMaster$1;->INSTANCE:Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$getGearFromMaster$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$getGearFromMaster$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->a:Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;

    const-string v1, "\u83b7\u53d6\u6863\u4f4d\u6570\u636e"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->o(Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderGetRemoteGeaData:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v2, 0x1

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z

    return-void
.end method
