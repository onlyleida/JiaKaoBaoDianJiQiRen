.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/safe/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

.field public final synthetic b:B


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/i;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    iput-byte p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/i;->b:B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/i;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/i;->b:B

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;B)V

    return-void
.end method
