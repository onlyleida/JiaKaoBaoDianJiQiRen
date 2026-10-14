.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/login/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/i;->a:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/i;->a:Ljava/lang/Exception;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener;->q(Ljava/lang/Exception;)V

    return-void
.end method
