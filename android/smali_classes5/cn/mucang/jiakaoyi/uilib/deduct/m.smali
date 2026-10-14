.class public final synthetic Lcn/mucang/jiakaoyi/uilib/deduct/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$d;

.field public final synthetic b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingActivityBinding;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$d;Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingActivityBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/m;->a:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$d;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/m;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingActivityBinding;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/m;->a:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$d;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/m;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingActivityBinding;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;->n(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$d;Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingActivityBinding;Ljava/util/List;)V

    return-void
.end method
