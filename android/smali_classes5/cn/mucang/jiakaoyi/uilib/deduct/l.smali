.class public final synthetic Lcn/mucang/jiakaoyi/uilib/deduct/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingActivityBinding;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingActivityBinding;Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/l;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingActivityBinding;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/l;->b:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/l;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingActivityBinding;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/l;->b:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;

    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;->m(Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingActivityBinding;Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method
