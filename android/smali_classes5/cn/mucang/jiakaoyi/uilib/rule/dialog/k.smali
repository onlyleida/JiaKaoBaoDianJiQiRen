.class public final synthetic Lcn/mucang/jiakaoyi/uilib/rule/dialog/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/k;->a:Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/k;->a:Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;

    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->v(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method
