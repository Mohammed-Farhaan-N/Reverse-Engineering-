.class public final enum Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;
.super Ljava/lang/Enum;
.source "SimpleLabelDrawer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrawLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;",
        "",
        "(Ljava/lang/String;I)V",
        "Inside",
        "Outside",
        "XAxis",
        "charts_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;

.field public static final enum Inside:Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;

.field public static final enum Outside:Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;

.field public static final enum XAxis:Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;


# direct methods
.method private static final synthetic $values()[Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;

    sget-object v1, Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;->Inside:Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;->Outside:Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;->XAxis:Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 70
    new-instance v0, Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;

    const-string v1, "Inside"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;->Inside:Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;

    new-instance v0, Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;

    const-string v1, "Outside"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;->Outside:Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;

    new-instance v0, Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;

    const-string v1, "XAxis"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;->XAxis:Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;

    invoke-static {}, Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;->$values()[Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;

    move-result-object v0

    sput-object v0, Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;->$VALUES:[Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;
    .locals 1

    const-class v0, Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;

    return-object p0
.end method

.method public static values()[Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;
    .locals 1

    sget-object v0, Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;->$VALUES:[Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/bytebeats/views/charts/bar/render/label/SimpleLabelDrawer$DrawLocation;

    return-object v0
.end method
