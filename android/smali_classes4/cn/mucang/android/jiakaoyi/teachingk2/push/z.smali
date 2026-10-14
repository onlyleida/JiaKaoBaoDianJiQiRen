.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/push/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/i0;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/i0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/z;->a:Lkotlinx/coroutines/i0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/z;->a:Lkotlinx/coroutines/i0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1;->g(Lkotlinx/coroutines/i0;)Lkotlin/v;

    move-result-object v0

    return-object v0
.end method
