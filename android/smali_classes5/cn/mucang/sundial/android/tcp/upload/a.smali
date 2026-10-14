.class public final synthetic Lcn/mucang/sundial/android/tcp/upload/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/upload/a;->a:Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/upload/a;->a:Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->b()V

    return-void
.end method
