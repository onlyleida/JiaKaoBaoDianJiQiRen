.class public final synthetic Lcn/mucang/android/core/config/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/core/config/YourActivity;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/core/config/YourActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/config/f;->a:Lcn/mucang/android/core/config/YourActivity;

    iput-object p2, p0, Lcn/mucang/android/core/config/f;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/core/config/f;->a:Lcn/mucang/android/core/config/YourActivity;

    iget-object v1, p0, Lcn/mucang/android/core/config/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/config/YourActivity;->o(Ljava/lang/String;)V

    return-void
.end method
