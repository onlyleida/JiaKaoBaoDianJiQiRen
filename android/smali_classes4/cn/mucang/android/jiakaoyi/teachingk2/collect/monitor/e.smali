.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;

.field public final synthetic b:Lkotlin/jvm/b/a;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Lkotlin/jvm/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/e;->b:Lkotlin/jvm/b/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/e;->b:Lkotlin/jvm/b/a;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->I(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Lkotlin/jvm/b/a;)V

    return-void
.end method
