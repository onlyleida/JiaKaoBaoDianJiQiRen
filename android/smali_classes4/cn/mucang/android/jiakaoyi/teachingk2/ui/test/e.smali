.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/o;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;->t(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/o;)V

    return-void
.end method
