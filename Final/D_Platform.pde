class Platform {
  PVector upperLeft, lowerRight;

  Platform(PVector upperLeft, PVector lowerRight) {
    this.upperLeft = upperLeft;
    this.lowerRight = lowerRight;
  }

  PVector getRandomLocation(float radius) {
    float x1 = upperLeft.x + radius;
    float x2 = lowerRight.x - radius;
    float y1 = upperLeft.y + radius;
    float y2 = lowerRight.y - radius;

    return new PVector(random(x1, x2+1), random(y1, y2+1));
  }
}

class SpawnZones {
  ArrayList<Platform> platforms;
  
  SpawnZones() {
    this.platforms = new ArrayList<Platform>();
  }
  
  boolean add(Platform platform) {
    return platforms.add(platform);
  }
  
  PVector getRandomLocation(float radius) {
    Platform platform = platforms.get((int)random(platforms.size()));
    return platform.getRandomLocation(radius);
  }
}
