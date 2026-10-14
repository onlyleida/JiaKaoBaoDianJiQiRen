.class public Lcn/mucang/android/core/api/verify/ErrorDialogParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;
    }
.end annotation


# static fields
.field public static final EXTRA_CANCEL_ACTION:Ljava/lang/String; = "cancelAction"

.field public static final EXTRA_CANCEL_BUTTON:Ljava/lang/String; = "cancelButton"

.field public static final EXTRA_COUNT_DOWN:Ljava/lang/String; = "countDown"

.field public static final EXTRA_COUNT_DOWN_ACTION:Ljava/lang/String; = "countDownAction"

.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field public static final EXTRA_OK_ACTION:Ljava/lang/String; = "okAction"

.field public static final EXTRA_OK_BUTTON:Ljava/lang/String; = "okButton"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"


# instance fields
.field public final cancelAction:Ljava/lang/String;

.field public final cancelButton:Ljava/lang/String;

.field public final countDown:J

.field public final countDownAction:Ljava/lang/String;

.field public final message:Ljava/lang/String;

.field public final okAction:Ljava/lang/String;

.field public final okButton:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;->a(Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->title:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;->b(Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->message:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;->c(Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->okButton:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;->d(Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->okAction:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;->e(Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->cancelButton:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;->f(Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->cancelAction:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;->g(Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->countDown:J

    .line 10
    invoke-static {p1}, Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;->h(Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/api/verify/ErrorDialogParams;->countDownAction:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;Lcn/mucang/android/core/api/verify/ErrorDialogParams$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/verify/ErrorDialogParams;-><init>(Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;)V

    return-void
.end method
