.class public final synthetic Lcn/mucang/jiakaoyi/uilib/upgrade/e/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

.field public final synthetic c:Z

.field public final synthetic d:Lcn/mucang/android/jiakaoyi/framework/h/b;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;ZLcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/j;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/j;->b:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iput-boolean p3, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/j;->c:Z

    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/j;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/j;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/j;->b:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iget-boolean v2, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/j;->c:Z

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/j;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->o(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;ZLcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method
