.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/l;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/l;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/AutoShuttleStartModel;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->p(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;Lcn/mucang/jiakaoyi/uilib/socket/model/AutoShuttleStartModel;)V

    return-void
.end method
