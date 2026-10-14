.class Lcn/mucang/android/core/callphone/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/callphone/a;->q(Lcn/mucang/android/core/callphone/PhoneCallRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/callphone/PhoneCallRequest;

.field final synthetic b:Lcn/mucang/android/core/callphone/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/callphone/a;Lcn/mucang/android/core/callphone/PhoneCallRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/callphone/a$b;->b:Lcn/mucang/android/core/callphone/a;

    iput-object p2, p0, Lcn/mucang/android/core/callphone/a$b;->a:Lcn/mucang/android/core/callphone/PhoneCallRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/core/callphone/a$b;->b:Lcn/mucang/android/core/callphone/a;

    iget-object v1, p0, Lcn/mucang/android/core/callphone/a$b;->a:Lcn/mucang/android/core/callphone/PhoneCallRequest;

    invoke-static {v0, v1}, Lcn/mucang/android/core/callphone/a;->c(Lcn/mucang/android/core/callphone/a;Lcn/mucang/android/core/callphone/PhoneCallRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "\u9ed8\u8ba4\u66ff\u6362"

    .line 2
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
