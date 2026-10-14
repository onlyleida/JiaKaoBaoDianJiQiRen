.class final Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps$initLatLng$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;"
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
.field public static final INSTANCE:Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps$initLatLng$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps$initLatLng$2;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps$initLatLng$2;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps$initLatLng$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps$initLatLng$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;
    .locals 5

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->f()Z

    move-result v0

    const-wide v1, 0x405c99e2bef05351L    # 114.40446446866305

    const-wide v3, 0x403e7de8c0bdeb54L    # 30.491832777373318

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DD)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DD)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps$initLatLng$2;->invoke()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v0

    return-object v0
.end method
