.class final Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGearALGType$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->u()V
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
.field public static final INSTANCE:Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGearALGType$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGearALGType$2;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGearALGType$2;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGearALGType$2;->INSTANCE:Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGearALGType$2;

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

    .line 5
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGearALGType$2;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->a:Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;

    const-string v1, "\u4e0b\u53d1\u6321\u4f4d\u7b97\u6cd5\u7c7b\u578b\u6307\u4ee4\u8d85\u65f6"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->q(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 2
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->d(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;Z)V

    .line 4
    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->h(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;)V

    return-void
.end method
