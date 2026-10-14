.class public final Lcn/mucang/sundial/library/entity/ExtraKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0004R\u0016\u0010\u0008\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0004R\u0016\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0004R\u0016\u0010\u000b\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0004R\u0016\u0010\u000c\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0004R\u0016\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0004\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/sundial/library/entity/ExtraKey;",
        "",
        "",
        "km",
        "Ljava/lang/String;",
        "xyToken",
        "checkMode",
        "authToken",
        "personMode",
        "uploadMode",
        "avatar",
        "courseSubject",
        "uploadEventType",
        "idNum",
        "<init>",
        "()V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/sundial/library/entity/ExtraKey;

.field public static final authToken:Ljava/lang/String; = "auth_token"

.field public static final avatar:Ljava/lang/String; = "avatar"

.field public static final checkMode:Ljava/lang/String; = "check_model"

.field public static final courseSubject:Ljava/lang/String; = "course_subject"

.field public static final idNum:Ljava/lang/String; = "id_num"

.field public static final km:Ljava/lang/String; = "km"

.field public static final personMode:Ljava/lang/String; = "person_model"

.field public static final uploadEventType:Ljava/lang/String; = "upload_event_type"

.field public static final uploadMode:Ljava/lang/String; = "upload_mode"

.field public static final xyToken:Ljava/lang/String; = "xy_token"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/entity/ExtraKey;

    invoke-direct {v0}, Lcn/mucang/sundial/library/entity/ExtraKey;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/entity/ExtraKey;->INSTANCE:Lcn/mucang/sundial/library/entity/ExtraKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
